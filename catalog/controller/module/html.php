<?php

class ControllerModuleHTML extends Controller
{

    public function index($setting)
    {
        if (isset($setting['module_description'][$this->config->get('config_language_id')])) {
            $data['heading_title'] = html_entity_decode($setting['module_description'][$this->config->get('config_language_id')]['title'], ENT_QUOTES, 'UTF-8');
            $data['html'] = html_entity_decode($setting['module_description'][$this->config->get('config_language_id')]['description'], ENT_QUOTES, 'UTF-8');

            if (isset($this->request->get['path']) && isset($this->request->get['main'])) {
                $category_id = $this->request->get['path'];
                $this->load->model('catalog/category');
                $category = $this->model_catalog_category->getCategory($category_id);
                $category_name = strtolower($category['name']);
                
                $setting_name = strtolower($setting['name']);

                if ($setting_name === $category_name) {
                    return $this->load->view('module/html', $data);
                }
            }
        }
    }
}
