<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}
        
        $level = 0;
        $limit = 4;
        
        $this->load->model('catalog/category');
        
        $categories = $this->model_catalog_category->getCategoriesByLevel($level, $limit);
        
        foreach ($categories as $category) {
             $data['categories'][] = [
                 'name' => $category['name'],
                 'description' => $category['description'],
                 'image' => $category['image'],
                 'href' => $this->url->link('product/category', 'path=' . $category['path_id'])
             ];
        }

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('common/home', $data));
	}
}