<?php

/**
 * AdminNoticia.class [ MODEL ADMIN ]
 * Respnsável por gerenciar as noticias no Admin do sistema!
 * 
 * @copyright (c) 2014, Gean Marques - CREATIVE WEBSITES
 */
class AdminNoticia {

    private $Data;
    private $Id;
    private $Tipo;
    private $Error;
    private $Result;

    //Tabela do banco dados
    const Entity = 'noticias';

    /**
     * <b>Cadastrar Noticias:</b> Envelopa os dados em um array atribuitivo e execute este método
     * para cadastrar o mesmo no sistema. Validações serão feitas!
     * @param ARRAY $Data = Atribuitivo
     */
    public function ExeCreate(array $Data) {
        $this->Data = $Data;
        $this->checkData();
        $this->setData();
        if ($this->Data['foto']):
            $upload = new Upload;
            $upload->Image($this->Data['foto'], $this->Data['titulo'], 640, 'noticias');
        endif;
        if (isset($upload) && $upload->getResult()):
            $this->Data['foto'] = $upload->getResult();
            $this->Create();
        else:
            $this->Data['foto'] = NULL;
            $this->Create();
        endif;
    }

    /**
     * <b>Atualizar Noticias:</b> Envelope os dados em uma array atribuitivo e informe o id de uma
     * noticia para atualiza-la no sistema!
     * @param INT $NoticiaId = Id da noticia
     * @param ARRAY $Data = Atribuitivo
     */
    public function ExeUpdate($NoticiaId, array $Data) {
        $this->Id = (int) $NoticiaId;
        $this->Data = $Data;
        $this->checkData();
        $this->setData();
        if (is_array($this->Data['foto'])):
            $this->fotoDelete($this->Id);
            $upload = new Upload;
            $upload->Image($this->Data['foto'], $this->Data['titulo'], 640, 'noticias');
        endif;
        if (isset($upload) && $upload->getResult()):
            $this->Data['foto'] = $upload->getResult();
            $this->Update();
        else:
            unset($this->Data['foto']);
            $this->Update();
        endif;
    }

    /**
     * <b>Remover Noticia:</b> Informe o ID da noticia que deseja remover.
     * @param INT $NoticiaId = Id da noticia
     */
    public function ExeDelete($NoticiaId) {
        $this->Id = (int) $NoticiaId;

        $readVideo = new Read;
        $readVideo->ExeRead(self::Entity, "WHERE id = :id", "id={$this->Id}");

        if (!$readVideo->getResult()):
            $this->Error = ['Oppsss, você tentou remover uma notícia que não existe no sistema!', WS_ERROR];
            $this->Result = false;
        else:
            $this->fotoDelete($this->Id);
            $this->Delete();
        endif;
    }

    /**
     * <b>Enviar Galeria:</b> Envelope um $_FILES de um input multiple e envie junto a um postID para executar
     * o upload e o cadastro de galerias!
     * @param ARRAY $Files = Envie um $_FILES multiple
     * @param STRING $Tipo = Informe o Tipo
     * @param INT $TipoId = Informe o ID do tipo
     */
    public function gbSend(array $Images, $Tipo, $TipoId) {
        $this->Id = (int) $TipoId;
        $this->Tipo = (string) $Tipo;
        $this->Data = $Images;

        $ImageName = new Read;
        $ImageName->ExeRead(self::Entity, "WHERE id = :id", "id={$this->Id}");

        if (!$ImageName->getResult()):
            $this->Error = ["Erro ao enviar fotos da noticia. O indice {$this->Id} não foi encontrado no banco de dados!", WS_ERROR];
            $this->getResult = false;
        else:
            $ImageName = $ImageName->getResult()[0]['titulo'];

            $gbFiles = array();
            $gbCount = count($this->Data['tmp_name']);
            $gbKeys = array_keys($this->Data);

            for ($gb = 0; $gb < $gbCount; $gb++):
                foreach ($gbKeys as $keys):
                    $gbFiles[$gb][$keys] = $this->Data[$keys][$gb];
                endforeach;
            endfor;

            $gbSend = new Upload;
            $i = 0;
            $u = 0;

            foreach ($gbFiles as $gbUpload):
                $i++;
                $ImgName = "tipo-{$this->Tipo}-id-{$this->Id}-" . (substr(md5(time() + $i), 0, 5));
                $gbSend->Image($gbUpload, $ImgName, 640, "banco_fotos");

                if ($gbSend->getResult()):
                    $gbImage = $gbSend->getResult();
                    $gbCreate = ['id_tipo' => $this->Id, 'tipo' => $this->Tipo, 'foto' => $gbImage, 'data' => date('Y-m-d H:i:s')];
                    $insertGb = new Create;
                    $insertGb->ExeCreate('banco_fotos', $gbCreate);
                    $u++;
                endif;
            endforeach;

            if ($u > 1):
                $this->Error = ["Galeria Atualizada: Foram enviadas {$u} imagens para esta galeria!", WS_ACCEPT];
                $this->Result = true;
            endif;
        endif;
    }

    /**
     * <b>Deletar Imagem da galeria:</b> Informe apenas o id da imagem na galeria para que esse método leia e remova
     * a imagem da pasta e delete o registro do banco!
     * @param INT $GbImageId = Id da imagem da galleria
     */
    public function gbRemove($GbImageId) {
        $this->Id = (int) $GbImageId;
        $readGb = new Read;
        $readGb->ExeRead("banco_fotos", "WHERE id = :gb", "gb={$this->Id}");
        if ($readGb->getResult()):
            $Imagem = '../uploads/' . $readGb->getResult()[0]['foto'];
            if (file_exists($Imagem) && !is_dir($Imagem)):
                unlink($Imagem);
            endif;

            $Deleta = new Delete;
            $Deleta->ExeDelete("banco_fotos", "WHERE id = :id", "id={$this->Id}");
            if ($Deleta->getResult()):
                $this->Error = ["A imagem foi removida com sucesso da galeria!", WS_ACCEPT];
                $this->Result = true;
            endif;

        endif;
    }

    /**
     * <b>Verificar Cadastro:</b> Retorna TRUE se o cadastro ou update for efetuado ou FALSE se não.
     * Para verificar erros execute um getError();
     * @return BOOL $Var = True or False
     */
    public function getResult() {
        return $this->Result;
    }

    /**
     * <b>Obter Erro:</b> Retorna um array associativo com um erro e um tipo.
     * @return ARRAY $Error = Array associatico com o erro
     */
    public function getError() {
        return $this->Error;
    }

    /*
     * ***************************************
     * **********  PRIVATE METHODS  **********
     * ***************************************
     */

    //Checa os dados
    private function checkData() {
        if (in_array('', $this->Data)):
            $this->Error = ["Existem campos em branco. Favor preencha todos os campos!", WS_ALERT];
            $this->Result = false;
        else:
            $this->Result = true;
        endif;
    }

    //Seta os Dados
    private function setData() {
        $capa = $this->Data['foto'];
        $notic = $this->Data['noticia'];
        unset($this->Data['foto'], $this->Data['noticia']);
        $this->Data = array_map('strip_tags', $this->Data);
        $this->Data = array_map('trim', $this->Data);
        $this->Data['foto'] = $capa;
        $this->Data['noticia'] = $notic;
        $this->Data['url_name'] = Check::Name($this->Data['titulo']);
    }

    //Excluir a Foto
    private function fotoDelete($Id) {
        $this->Id = (int) $Id;

        $readFoto = new Read;
        $readFoto->ExeRead(self::Entity, "WHERE id = :id", "id={$this->Id}");
        $foto = "../uploads/{$readFoto->getResult()[0]['foto']}";
        if (file_exists($foto) && !is_dir($foto)):
            unlink($foto);
        endif;
    }

    //Cadastrar Notícia
    private function Create() {
        $Create = new Create;
        $this->Data['qm_cadastr'] = $_SESSION['userlogin']['id'];
        
        $Create->ExeCreate(self::Entity, $this->Data);
        if ($Create->getResult()):
            $this->Error = ["A noticia <b>{$this->Data['titulo']}</b> foi cadastrada com sucesso no sistema!", WS_ACCEPT];
            $this->Result = $Create->getResult();
        endif;
    }

    //Atualiza Notícia
    private function Update() {
        $Update = new Update;
        $this->Data['qm_alterou'] = $_SESSION['userlogin']['id'];
        
        $Update->ExeUpdate(self::Entity, $this->Data, "WHERE id = :id", "id={$this->Id}");
        if ($Update->getResult()):
            $this->Error = ["A noticia <b>{$this->Data['nome']}</b> foi atualizada com sucesso!", WS_ACCEPT];
            $this->Result = true;
        endif;
    }

    //Excluir Notícia
    private function Delete() {
        $Delete = new Delete;
        $Delete->ExeDelete(self::Entity, "WHERE id = :id", "id={$this->Id}");
        if ($Delete->getResult()):
            $this->Error = ["Noticia removida com sucesso do sistema!", WS_ACCEPT];
            $this->Result = true;
        endif;
    }

}
