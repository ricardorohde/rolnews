<?php

/**
 * AdminProduto.class [ MODEL ADMIN ]
 * Respnsável por gerenciar os produtos no Admin do sistema!
 * 
 * @copyright (c) 2014, Gean Marques - CREATIVE WEBSITES
 */
class AdminProduto {

    private $Data;
    private $Id;
    private $Error;
    private $Result;

    //Tabela do banco dados
    const Entity = 'produtos';

    /**
     * <b>Cadastrar Produtos:</b> Envelopa os dados de um produto em um array atribuitivo e execute este método
     * para cadastrar o mesmo no sistema. Validações serão feitas!
     * @param ARRAY $Data = Atribuitivo 
     */
    public function ExeCreate(array $Data) {
        $this->Data = $Data;
        $this->checkData();

        if ($this->Data['foto']):
            $upload = new Upload;
            $upload->Image($this->Data['foto'], $this->Data['nome'], 480, 'produtos');
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
     * <b>Atualizar Produto:</b> Envelope os dados em uma array atribuitivo e informe o id de um
     * produto para atualiza-lo no sistema!
     * @param INT $ProdutoId = Id do produto
     * @param ARRAY $Data = Atribuitivo
     */
    public function ExeUpdate($ProdutoId, array $Data) {
        $this->Id = (int) $ProdutoId;
        $this->Data = $Data;
        
        $this->checkData();
        $this->setData();

        if (is_array($this->Data['foto'])):
            $this->fotoDelete($this->Id);
            $upload = new Upload;
            $upload->Image($this->Data['foto'], $this->Data['nome'], 480, 'produtos');
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
     * <b>Remover Produto:</b> Informe o ID do produto que deseja remover.
     * @param INT $ProdutoId = Id do produto
     */
    public function ExeDelete($ProdutoId) {
        $this->Id = (int) $ProdutoId;

        $readVideo = new Read;
        $readVideo->ExeRead(self::Entity, "WHERE id = :id", "id={$this->Id}");

        if (!$readVideo->getResult()):
            $this->Error = ['Oppsss, você tentou remover um produto que não existe no sistema!', WS_ERROR];
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
        $descr = $this->Data['descricao']; 
        unset($this->Data['foto'], $this->Data['descricao']);
        $this->Data = array_map('strip_tags', $this->Data);
        $this->Data = array_map('trim', $this->Data);
        $this->Data['foto'] = $capa;
        $this->Data['descricao'] = $descr;
        $this->Data['url_name'] = Check::Name($this->Data['nome']);
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

    //Cadastrar Produto
    private function Create() {
        $Create = new Create;
        #$this->setData();
        $Create->ExeCreate(self::Entity, $this->Data);
        if ($Create->getResult()):
            $this->Error = ["O produto/serviço <b>{$this->Data['nome']}</b> foi cadastrado com sucesso no sistema!", WS_ACCEPT];
            $this->Result = $Create->getResult();
        endif;
    }

    //Atualiza Produto!
    private function Update() {
        $Update = new Update;
        $Update->ExeUpdate(self::Entity, $this->Data, "WHERE id = :id", "id={$this->Id}");
        if ($Update->getResult()):
            $this->Error = ["A revista <b>{$this->Data['nome']}</b> foi atualizada com sucesso!", WS_ACCEPT];
            $this->Result = true;
        endif;
    }

    //Excluir Produto
    private function Delete() {
        $Delete = new Delete;
        $Delete->ExeDelete(self::Entity, "WHERE id = :id", "id={$this->Id}");
        if ($Delete->getResult()):
            $this->Error = ["Produto removido com sucesso do sistema!", WS_ACCEPT];
            $this->Result = true;
        endif;
    }

}
