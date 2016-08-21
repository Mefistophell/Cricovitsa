<?php
class ControllerCommonSearch extends Controller {
	public function index() {
		$this->load->language('common/search');

		$data['text_search'] = $this->language->get('text_search');

		if (isset($this->request->get['search'])) {
			$data['search'] = $this->request->get['search'];
            $data['selected_art'] = 'selected="selected"';
            $data['selected_artist'] = '';
        } elseif (isset($this->request->get['name'])) {
            $data['search'] = $this->request->get['name'];
            $data['selected_artist'] = 'selected="selected"';
            $data['selected_art'] = '';
        } else {
			$data['search'] = '';
            $data['selected_artist'] = '';
            $data['selected_art'] = '';
		}
        

		return $this->load->view('common/search', $data);
	}
}