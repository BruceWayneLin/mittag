<?php
class ControllerCommonEmailThanks extends Controller {
	public function index() {
		$this->load->language('common/email');

		$this->document->setTitle($this->language->get('heading_title'));
        echo $_POST["subject"];
        echo '<br/>';
        echo $_POST["message"];
//        $this->load->model('customer/customer_field');
//
//        $this->model_customer_cutomer_field->getCustomFields();
        $this->load->model('customer/customer');

        $customField = $this->model_customer_customer->getCustomers();
        $numberOfCustom = count($customField);
        $newArr = array();

        for ($x = 0; $x <= $numberOfCustom; $x++) {
            if(!empty($customField[$x]['custom_field'])) {
//                var_dump($customField[$x]["email"]);
                $obj = json_decode($customField[$x]['custom_field']);
                print_r($obj[1]);
                $now = new \DateTime('now');
                $month = $now->format('m');
                echo $month;
//                array_push($newArr, json_decode($customField[$x]['custom_field']));
            }
        }
        $countNewArr = count($newArr);
        for ($i = 0; $i <= $countNewArr; $i++) {
//            var_dump($countNewArr[$i]);
        }
//        var_dump($newArr);

        // the message
//        $to = "anikiwayne@gmail.com";
//        $subject = "My subject";
//        $txt = "Hello world!";
//        $headers = "From: anikiwayne@gmail.com" . "\r\n" .
//            "CC: anikiwayne@gmail.com";
//
//        mail($to,$subject,$txt,$headers);

        $data['heading_title'] = $this->language->get('heading_title');
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		$data['action'] = $this->url->link('common/emailthanks', '', true);
		$this->response->setOutput($this->load->view('common/emailthanks', $data));
	}
}