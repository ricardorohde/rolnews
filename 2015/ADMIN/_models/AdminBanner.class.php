<?php

/**
 * AdminBanner.class [ MODEL ADMIN ]
 * Respnsável por gerenciar os banners no Admin do sistema!
 * 
 * @copyright (c) 2014, Gean Marques - CREATIVE WEBSITES
 */
class AdminBanner {

    private $Data;
    private $Id;
    private $Error;
    private $Result;

    //Tabela do banco dados
    const Entity = 'banners';

    /**
     * <b>Cadastrar Banners:</b> Envelopa os dados em um array atribuitivo e execute este método
     * para cadastrar o mesmo no sistema. Validações serão feitas!
     * @param ARRAY $Data = Atribuitivo 
     */
    public function ExeCreate(array $Data) {
        $this->Data = $Data;
        $this->checkData();

        if ($this->Data['banner']):
            $upload = new Upload;
            if ($this->Data['tipo'] == '1' || $this->Data['tipo'] == '2'):
                $upload->Image($this->Data['banner'], $this->Data['titulo'], 418, 'banners');
            else:
                $upload->Image($this->Data['banner'], $this->Data['titulo'], 228, 'banners');
            endif;
        endif;

        if (isset($upload) && $upload->getResult()):
            $this->Data['banner'] = $upload->getResult();
            $this->Create();
        else:
            $this->Data['banner'] = NULL;
            $this->Create();
        endif;
    }

    /**
     * <b>Atualizar Banner:</b> Envelope os dados em uma array atribuitivo e informe o id de um
     * registro para atualiza-lo no sistema!
     * @param INT $BannerId = Id do banner
     * @param ARRAY $Data = Atribuitivo
     */
    public function ExeUpdate($BannerId, array $Data) {
        $this->Id = (int) $BannerId;
        $this->Data = $Data;
        $this->checkData();
        $this->setData();
        if (is_array($this->Data['banner'])):
            $this->fotoDelete($this->Id);
            $upload = new Upload;
            if ($this->Data['tipo'] == '1' || $this->Data['tipo'] == '2'):
                $upload->Image($this->Data['banner'], $this->Data['titulo'], 418, 'banners');
            else:
                $upload->Image($this->Data['banner'], $this->Data['titulo'], 228, 'banners');
            endif;
        endif;

        if (isset($upload) && $upload->getResult()):
            $this->Data['banner'] = $upload->getResult();
            $this->Update();
        else:
            unset($this->Data['banner']);
            $this->Update();
        endif;
    }

    /**
     * <b>Remover Banner:</b> Informe o ID do registro que deseja remover.
     * @param INT $BannerId = Id da revista
     */
    public function ExeDelete($BannerId) {
        $this->Id = (int) $BannerId;

        $readVideo = new Read;
        $readVideo->ExeRead(self::Entity, "WHERE id = :id", "id={$this->Id}");

        if (!$readVideo->getResult()):
            $this->Error = ['Oppsss, você tentou remover um banner que não existe no sistema!', WS_ERROR];
            $this->Result = false;
        else:
            $this->fotoDelete($this->Id);
            $this->Delete();
        endif;
    }

    /**
     * <b>Verificar Cadastro:</b> Retorna TRUE se o cadastro ou update for efetuado ou FALSE se não.
     * Para verificar erros execute um getError();
     * @return BOOL $Var = True or False
     */
    function getResult() {
        return $this->Result;
    }

    /**
     * <b>Obter Erro:</b> Retorna um array associativo com um erro e um tipo.
     * @return ARRAY $Error = Array associatico com o erro
     */
    function getError() {
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
        $capa = $this->Data['banner'];
        unset($this->Data['banner']);
        $this->Data = array_map('strip_tags', $this->Data);
        $this->Data = array_map('trim', $this->Data);
        $this->Data['banner'] = $capa;
        $this->Data['data_inicial'] = Check::Data($this->Data['data_inicial']);
        $this->Data['data_final'] = Check::Data($this->Data['data_final']);
    }

    //Excluir a Foto
    private function fotoDelete($Id) {
        $this->Id = (int) $Id;

        $readFoto = new Read;
        $readFoto->ExeRead(self::Entity, "WHERE id = :id", "id={$this->Id}");
        $foto = "../uploads/{$readFoto->getResult()[0]['banner']}";
        if (file_exists($foto) && !is_dir($foto)):
            unlink($foto);
        endif;
    }

    //Cadastrar Banner
    private function Create() {
        $Create = new Create;
        $this->setData();
        $this->Data['qm_cadastr'] = $_SESSION['userlogin']['id'];
        
        $Create->ExeCreate(self::Entity, $this->Data);
        if ($Create->getResult()):
            $this->Error = ["O Banner <b>{$this->Data['titulo']}</b> foi cadastrado com sucesso no sistema!", WS_ACCEPT];
            $this->Result = $Create->getResult();
        endif;
    }

    //Atualiza Banner
    private function Update() {
        $Update = new Update;
        $this->Data['qm_alterou'] = $_SESSION['userlogin']['id'];
        
        $Update->ExeUpdate(self::Entity, $this->Data, "WHERE id = :id", "id={$this->Id}");
        if ($Update->getResult()):
            $this->Error = ["O Banner <b>{$this->Data['titulo']}</b> foi atualizado com sucesso!", WS_ACCEPT];
            $this->Result = true;
        endif;
    }

    //Excluir Banner
    private function Delete() {
        $Delete = new Delete;
        $Delete->ExeDelete(self::Entity, "WHERE id = :id", "id={$this->Id}");
        if ($Delete->getResult()):
            $this->Error = ["Banner removido com sucesso do sistema!", WS_ACCEPT];
            $this->Result = true;
        endif;
    }

}
