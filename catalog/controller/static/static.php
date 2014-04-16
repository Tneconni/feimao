<?php
class ControllerStaticStatic extends Controller {

    public function print_type() {


        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/static/print_type.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/static/print_type.tpl';
        } else {
            $this->template = 'default/template/static/print_type.tpl';
        }



        $this->children = array(

            'common/footer',
            'common/header'

        );

        $this->response->setOutput($this->render());

    }



}
