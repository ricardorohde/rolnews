<?php

/**
 * Seo [ MODEL ]
 * Classe de apoio para o modelo LINK. Pode ser utilizada para gerar SSEO para as páginas do sistema!
 * 
 * @copyright (c) 2014, Robson V. Leite UPINSIDE TECNOLOGIA
 */
class Seo {

    private $File;
    private $Link;
    private $Data;
    private $Tags;

    /* DADOS POVOADOS */
    private $seoTags;
    private $seoData;

    function __construct($File, $Link) {
        $this->File = strip_tags(trim($File));
        $this->Link = strip_tags(trim($Link));
    }

    /**
     * <b>Obter MetaTags:</b> Execute este método informando os valores de navegação para que o mesmo obtenha
     * todas as metas como title, description, og, itemgroup, etc.
     * 
     * <b>Deve ser usada com um ECHO dentro da tag HEAD!</b>
     * @return HTML TAGS =  Retorna todas as tags HEAD
     */
    public function getTags() {
        $this->checkData();
        return $this->seoTags;
    }

    /**
     * <b>Obter Dados:</b> Este será automaticamente povoado com valores de uma tabela single para arquivos
     * como categoria, artigo, etc. Basta usar um extract para obter as variáveis da tabela!
     * 
     * @return ARRAY = Dados da tabela
     */
    public function getData() {
        $this->checkData();
        return $this->seoData;
    }

    /*
     * ***************************************
     * **********  PRIVATE METHODS  **********
     * ***************************************
     */

    //Verifica o resultset povoando os atributos
    private function checkData() {
        if (!$this->seoData):
            $this->getSeo();
        endif;
    }

    //Identifica o arquivo e monta o SEO de acordo
    private function getSeo() {
        $ReadSeo = new Read;

        switch ($this->File):
            //SEO:: INDEX
            case 'index':
                $this->Data = [SITENAME . " - Informação Digital", SITEDESC, HOME, INCLUDE_PATH . '/images/logo-topo.png'];
                break;

            //SEO:: ROLNEWS TV
            case 'rolnewstv':
                $this->Data = [SITENAME . " - Rolnews TV", "Rolnews TV com exibição da programação da STUDIO MAX TV", HOME . '/rolnewstv', INCLUDE_PATH . '/images/logo-topo.png'];
                break;
            
            //SEO:: EVENTOS
            case 'eventos':
                $this->Data = [SITENAME . " - Cobertura de Eventos", "Galeria de Eventos da ACIRM", HOME . '/eventos', INCLUDE_PATH . '/images/logo-topo.png'];
                break;

            //SEO:: EVENTO (EXIBIR)
            case 'evento':
                $ReadSeo->ExeRead("eventos", "WHERE url_name = :link", "link={$this->Link}");
                if (!$ReadSeo->getResult()):
                    $this->seoData = null;
                    $this->seoTags = null;
                else:
                    $extract = extract($ReadSeo->getResult()[0]);
                    $this->seoData = $ReadSeo->getResult()[0];
                    $this->Data = ["Evento: {$evento}" . ' - ' . SITENAME, "Exibição do evento: {$evento}", HOME . "/evento/{$url_name}", $foto];
                endif;
                break;

            //SEO:: VIDEOS
            case 'videos':
                $this->Data = [SITENAME . " - Galeria de Videos", "Galeria de Videos da ACIRM", HOME . '/videos', INCLUDE_PATH . '/images/logo-topo.png'];
                break;

            //SEO:: VIDEO (PLAYER)
            case 'video':
                $ReadSeo->ExeRead("videos", "WHERE url_name = :link", "link={$this->Link}");
                if (!$ReadSeo->getResult()):
                    $this->seoData = null;
                    $this->seoTags = null;
                else:
                    $extract = extract($ReadSeo->getResult()[0]);
                    $this->seoData = $ReadSeo->getResult()[0];
                    $this->Data = ["Video: {$titulo}" . ' - ' . SITENAME, "Exibição do video: {$titulo}", HOME . "/video/{$url_name}", $foto];
                endif;
                break;

            //SEO:: NOTICIAS
            case 'noticias':
                $this->Data = [SITENAME . " - Notícias", "Todas as noticias sobre a ACIRM", HOME . '/noticias', INCLUDE_PATH . '/images/logo-topo.png'];
                break;

            //SEO:: NOTICIA (LER)
            case 'noticia':
                $ReadSeo->ExeRead("noticias n", "LEFT JOIN noticias_categoria nc ON nc.cat_url = n.categoria WHERE n.url_name = :link", "link={$this->Link}");
                if (!$ReadSeo->getResult()):
                    $this->seoData = null;
                    $this->seoTags = null;
                else:
                    $extract = extract($ReadSeo->getResult()[0]);
                    $this->seoData = $ReadSeo->getResult()[0];
                    $this->Data = [$titulo . ' - ' . SITENAME, "Exibição da notícia: {$titulo}", HOME . "/noticia/{$url_name}", $foto];
                endif;
                break;

            //SEO:: CONTATO
            case 'contato':
                $this->Data = [SITENAME . " - Entre em contato conosco", "Entre em contato com a ACIRM", HOME . '/contato/' . $this->Link, INCLUDE_PATH . '/images/logo-topo.png'];
                break;

            //SEO:: 404
            default :
                $this->Data = [SITENAME . ' - 404 Oppsss, Nada encontrado!', SITEDESC, HOME . '/404', INCLUDE_PATH . '/images/logo-topo.png'];

        endswitch;

        if ($this->Data):
            $this->setTags();
        endif;
    }

    //Monta e limpa as tags para alimentar as tags
    private function setTags() {
        $this->Tags['Title'] = $this->Data[0];
        $this->Tags['Content'] = Check::Words(html_entity_decode($this->Data[1]), 25);
        $this->Tags['Link'] = $this->Data[2];
        $this->Tags['Image'] = $this->Data[3];

        $this->Tags = array_map('strip_tags', $this->Tags);
        $this->Tags = array_map('trim', $this->Tags);

        $this->Data = null;

        //NORMAL PAGE
        $this->seoTags = '<link rel="shortcut icon" type="image/x-icon" href="' . INCLUDE_PATH . '/images/favicon.ico" />' . "\n";
        $this->seoTags .= '<title>' . $this->Tags['Title'] . '</title> ' . "\n";
        $this->seoTags .= '<meta name="description" content="' . $this->Tags['Content'] . '"/>' . "\n";
        $this->seoTags .= '<meta name="robots" content="index, follow" />' . "\n";
        $this->seoTags .= '<link rel="canonical" href="' . $this->Tags['Link'] . '">' . "\n";
        $this->seoTags .= '<meta name="author" content="Creative Websites" />' . "\n";
        $this->seoTags .= '<meta name="reply-to" content="contato@creativewebsites.com.br"/>' . "\n";
        $this->seoTags .= '<meta name="copyright" content="Creative Websites" />' . "\n";
        $this->seoTags .= "\n";

        //FACEBOOK
        $this->seoTags .= '<meta property="og:site_name" content="' . SITENAME . '" />' . "\n";
        $this->seoTags .= '<meta property="og:locale" content="pt_BR" />' . "\n";
        $this->seoTags .= '<meta property="og:title" content="' . $this->Tags['Title'] . '" />' . "\n";
        $this->seoTags .= '<meta property="og:description" content="' . $this->Tags['Content'] . '" />' . "\n";
        $this->seoTags .= '<meta property="og:image" content="' . $this->Tags['Image'] . '" />' . "\n";
        $this->seoTags .= '<meta property="og:url" content="' . $this->Tags['Link'] . '" />' . "\n";
        $this->seoTags .= '<meta property="og:type" content="article" />' . "\n";
        $this->seoTags .= "\n";

        //ITEM GROUP (TWITTER)
        $this->seoTags .= '<meta itemprop="name" content="' . $this->Tags['Title'] . '">' . "\n";
        $this->seoTags .= '<meta itemprop="description" content="' . $this->Tags['Content'] . '">' . "\n";
        $this->seoTags .= '<meta itemprop="url" content="' . $this->Tags['Link'] . '">' . "\n";

        $this->Tags = null;
    }

}
