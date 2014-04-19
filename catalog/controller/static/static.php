<?php
class ControllerStaticStatic extends Controller {

    public function print_type() {

        $this->data['modelwarehuose'] = $this->url->link('product/category','model');
        $this->data['uploadmodel'] = $this->url->link('product/product/uploadmodel','product_id=1000');

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

    public function print_market() {


        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/static/print_market.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/static/print_market.tpl';
        } else {
            $this->template = 'default/template/static/print_market.tpl';
        }

        $this->children = array(

            'common/footer',
            'common/header'

        );

        $this->response->setOutput($this->render());

    }

    // 指向页面
    public function guide(){


        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/static/guide.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/static/guide.tpl';
        } else {
            $this->template = 'default/template/static/guide.tpl';
        }

        $this->children = array(

            'common/footer',
            'common/header'

        );

        $this->response->setOutput($this->render());

    }

}
