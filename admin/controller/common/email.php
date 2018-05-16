<?php
class ControllerCommonEmail extends Controller {
	public function index() {
		$this->load->language('common/email');

		$this->document->setTitle($this->language->get('heading_title'));
        $data['heading_title'] = $this->language->get('heading_title');
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		$data['action'] = $this->url->link('common/emailthanks', '', true);
		$this->response->setOutput($this->load->view('common/email', $data));
	}
}