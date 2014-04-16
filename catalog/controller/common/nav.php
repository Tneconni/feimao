<?php
class ControllerCommonNav extends Controller {

    public function index() {



        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/nav.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/common/nav.tpl';
        } else {
            $this->template = 'default/template/common/nav.tpl';
        }

        $this->children = array(
            'common/column_left',
            'common/column_right',
            'common/content_top',
            'common/content_bottom',
            'common/footer',
            'common/header'
        );

        $this->response->setOutput($this->render());

    }

}