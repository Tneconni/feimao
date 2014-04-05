<?php  
class ControllerCommonGuid extends Controller {
	public function index() {
        exit;
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));

//		$this->data['heading_title'] = $this->config->get('config_title');
        $this->data['heading_title'] = "要3D打印就上肥猫网";
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/guid.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/guid.tpl';
		} else {
			$this->template = 'default/template/common/guid.tpl';
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
?>