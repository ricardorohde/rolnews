<?php

/**
 * SiteCandidato.class [ MODEL SITE ]
 * Respnsável por gerenciar os cadastros de CANDIDATOS para sistema de empregos!
 * 
 * @copyright (c) 2015, Gean Marques - CREATIVE WEBSITES
 */
class SiteCandidato {

    private $Data;
    private $Id;
    private $Error;
    private $Result;

    //Tabela do banco de dados
    const Entity = 'empregos_candidato';

    /**
     * <b>Cadastrar Candidato:</b> Envelopa os dados em um array atribuitivo e execute esse método
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
     * <b>Alterar Candidato:</b> Envelopa os dados em um array atributivo e executa o método
     * para atualizar o mesmo no siste. Validações serão feitas!
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
        $remove_cep = $this->Data['candidato_cep'];
        $remove_end = $this->Data['candidato_endereco'];
        $remove_num = $this->Data['candidato_numero'];
        $remove_bai = $this->Data['candidato_bairro'];
        unset($this->Data['candidato_cep'], $this->Data['candidato_endereco'], $this->Data['candidato_numero'], $this->Data['candidato_bairro']);
        if (in_array('', $this->Data)):
            $this->Error = ["Caro <b>Candidato</b> existe campos em brancos, favor abre o formulário no link <b>Cadastre-se</b> e informe os campo que faltam.", WS_ALERT];
            $this->Result = false;
        elseif (!Check::Email($this->Data['candidato_email'])):
            $this->Error = ["O e-email informado não parece ter um formato válido!", WS_ERROR];
            $this->Result = false;
        elseif ($this->checkEmail()):
            $this->Error = ["O e-email informado foi cadastrado no sistema por outro usuário! Informe outro e-mail!", WS_ERROR];
            $this->Result = false;
        else:
            $this->Result = true;
            $this->Data['candidato_cep'] = $remove_cep;
            $this->Data['candidato_endereco'] = $remove_end;
            $this->Data['candidato_numero'] = $remove_num;
            $this->Data['candidato_bairro'] = $remove_bai;
        endif;
    }

    //Verifica usuário pelo e-mail, Impede cadastro duplicado!
    private function checkEmail() {
        $Where = (isset($this->Id) ? "candidato_id != {$this->Id} AND" : '');
        $readUser = new Read;
        $readUser->ExeRead(self::Entity, "WHERE {$Where} candidato_email = :e", "e={$this->Data['candidato_email']}");
        if ($readUser->getRowCount()):
            return true;
        endif;
    }

    //Seta os Dados
    private function setData() {
        $this->Data['candidato_datanasc'] = Check::Data($this->Data['candidato_datanasc']);
        if (isset($this->Data['candidato_senha'])):
            $this->Data['candidato_senha'] = md5($this->Data['candidato_senha']);
        endif;
    }

    //Cadastra Candidato
    private function Create() {
        $Create = new Create;
        $Create->ExeCreate(self::Entity, $this->Data);
        if ($Create->getResult()):
            $this->Error = ["Olá Candidato <b>{$this->Data['candidato_nome']}</b> seu cadastrado foi realizado com sucesso!<br> Aguarde estamos redirecionando para o painel...", WS_ACCEPT];
            $this->Result = $Create->getResult();
        endif;
    }

    //Atualiza Candidato
    private function Update() {
        $Update = new Update;
        $Update->ExeUpdate(self::Entity, $this->Data, "WHERE candidato_id = :id", "id={$this->Id}");
        if ($Update->getResult()):
            $this->Error = ["<b>{$this->Data['candidato_nome']}</b>, seus dados foram atualizados com sucesso!", WS_ACCEPT];
            $this->Result = $Update->getResult();
        endif;
    }

}
