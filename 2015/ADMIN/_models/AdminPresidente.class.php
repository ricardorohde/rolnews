<?php

/**
 * AdminPresidente.class [ MODEL ADMIN ]
 * Respnsável por gerenciar os presidentes no Admin do sistema!
 * 
 * @copyright (c) 2014, Gean Marques - CREATIVE WEBSITES
 */
class AdminPresidente {

    private $Data;
    private $Id;
    private $Error;
    private $Result;

    //Tabela do banco dados
    const Entity = 'presidentes';

    /**
     * <b>Cadastrar Presidentes:</b> Envelopa os dados em um array atribuitivo e execute este método
     * para cadastrar o mesmo no sistema. Validações serão feitas!
     * @param ARRAY $Data = Atribuitivo 
     */
    public function ExeCreate(array $Data) {
        $this->Data = $Data;
        $this->checkData();

        if ($this->Data['foto']):
            $upload = new Upload;
            $upload->Image($this->Data['foto'], $this->Data['presidente'], 480, 'presidentes');
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
     * <b>Atualizar Presidente:</b> Envelope os dados em um array atribuitivo e informe o id de um
     * presidente para atualiza-lo no sistema!
     * @param INT $PresidenteId = Id do presidente
     * @param ARRAY $Data = Atribuitivo
     */
    public function ExeUpdate($PresidenteId, array $Data) {
        $this->Id = (int) $PresidenteId;
        $this->Data = $Data;

        $this->checkData();
        $this->setData();

        if (is_array($this->Data['foto'])):
            $this->fotoDelete($this->Id);
            $upload = new Upload;
            $upload->Image($this->Data['foto'], $this->Data['presidente'], 480, 'presidentes');
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
     * <b>Remover Presidente:</b> Informe o ID do presidente que deseja remover.
     * @param INT $PresidenteId = Id do presidente
     */
    public function ExeDelete($PresidenteId) {
        $this->Id = (int) $PresidenteId;

        $readPresidente = new Read;
        $readPresidente->ExeRead(self::Entity, "WHERE id = :id", "id={$this->Id}");

        if (!$readPresidente->getResult()):
            $this->Error = ['Oppsss, você tentou remover um presidente que não existe no sistema!', WS_ERROR];
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
        $capa = $this->Data['foto'];
        unset($this->Data['foto']);
        $this->Data = array_map('strip_tags', $this->Data);
        $this->Data = array_map('trim', $this->Data);
        $this->Data['foto'] = $capa;
        $this->Data['url_name'] = Check::Name($this->Data['presidente']);
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

    //Cadastrar Presidente
    private function Create() {
        $Create = new Create;
        #$this->setData();
        $Create->ExeCreate(self::Entity, $this->Data);
        if ($Create->getResult()):
            $this->Error = ["O Presidente <b>{$this->Data['presidente']}</b> foi cadastrado com sucesso no sistema!", WS_ACCEPT];
            $this->Result = $Create->getResult();
        endif;
    }

    //Atualiza Presidente
    private function Update() {
        $Update = new Update;
        $Update->ExeUpdate(self::Entity, $this->Data, "WHERE id = :id", "id={$this->Id}");
        if ($Update->getResult()):
            $this->Error = ["O Presidente <b>{$this->Data['presidente']}</b> foi atualizado com sucesso!", WS_ACCEPT];
            $this->Result = true;
        endif;
    }

    //Excluir Presidente
    private function Delete() {
        $Delete = new Delete;
        $Delete->ExeDelete(self::Entity, "WHERE id = :id", "id={$this->Id}");
        if ($Delete->getResult()):
            $this->Error = ["Presidente removido com sucesso do sistema!", WS_ACCEPT];
            $this->Result = true;
        endif;
    }

}
