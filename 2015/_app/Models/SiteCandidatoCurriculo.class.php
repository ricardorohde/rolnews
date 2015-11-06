<?php

/**
 * SiteCandidato.class [ MODEL SITE ]
 * Respnsável por gerenciar os cadastros de curriculos dos CANDIDATOS para sistema de empregos!
 * 
 * @copyright (c) 2015, Gean Marques - CREATIVE WEBSITES
 */
class SiteCandidatoCurriculo {

    private $Data;
    private $Id;
    private $Error;
    private $Result;

    //Tabela do banco de dados
    const Entity = 'empregos_curriculo';

    /**
     * <b>Cadastrar Curriculo:</b> Envelopa os dados em um array atribuitivo e execute esse método
     * para cadastrar o mesmo no sistema. Validações serão feitas!
     * @param ARRAY $Data = Atribuitivo
     */
    public function ExeCreate(array $Data) {
        $this->Data = $Data;
        $this->checkData();
        $this->setData();
        if ($this->getResult()):
            $this->Create();
        endif;
    }

    /**
     * <b>Alterar Curriculo:</b> Envelopa os dados em um array atributivo e executa o método
     * para atulizar o mesmo no siste. Validações serão feitas!
     * @param INT $Id = ID do Candidato
     * @param ARRAY $Data = Dados atribuitivos    
     */
    public function ExeUpdate($Id, array $Data) {
        $this->Id = (int) $Id;
        $this->Data = $Data;
        $this->checkData();
        $this->setData();
        if ($this->getResult()):
            $this->Update();
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
        if (empty($this->Data['curriculo_cargo'])):
            $this->Error = ["O campo CARGO é de preenchimento obrigatório!", WS_ALERT];
            $this->Result = false;
        else:
            $this->Result = true;
        endif;
    }

    //Seta os Dados
    private function setData() {
        $formacao = $this->Data['curriculo_formacao'];
        $qualificacao = $this->Data['curriculo_qualificacao'];
        $cursos = $this->Data['curriculo_cursos'];
        $empregos = $this->Data['curriculo_empregos'];
        $cargo = $this->Data['curriculo_cargo'];

        unset($this->Data['curriculo_formacao'], $this->Data['curriculo_qualificacao'], $this->Data['curriculo_cursos'], $this->Data['curriculo_empregos'], $this->Data['curriculo_cargo']);

        $this->Data = array_map('strip_tags', $this->Data);
        $this->Data = array_map('trim', $this->Data);

        $this->Data['curriculo_formacao'] = $formacao;
        $this->Data['curriculo_qualificacao'] = $qualificacao;
        $this->Data['curriculo_cursos'] = $cursos;
        $this->Data['curriculo_empregos'] = $empregos;
        $this->Data['curriculo_cargo'] = $cargo;
    }

    //Cadastra Candidato
    private function Create() {
        $Create = new Create;
        $Create->ExeCreate(self::Entity, $this->Data);
        if ($Create->getResult()):
            $this->Error = ["Seus dados foram cadastrados com sucesso!", WS_ACCEPT];
            $this->Result = $Create->getResult();
        endif;
    }

    //Atualiza Candidato
    private function Update() {
        $Update = new Update;
        $Update->ExeUpdate(self::Entity, $this->Data, "WHERE curriculo_candidato = :id", "id={$this->Id}");
        if ($Update->getResult()):
            $this->Error = ["Seus Dados foram atualizados com sucesso!", WS_ACCEPT];
            $this->Result = $Update->getResult();
        endif;
    }

}
