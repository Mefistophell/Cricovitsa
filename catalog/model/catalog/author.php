<?php
class ModelCatalogAuthor extends Model {
	public function getAuthor($author_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "seller m WHERE m.seller_id = '" . (int)$author_id. "'");

		return $query->row;
	}

	public function getAuthors($data = array()) {
		if ($data) {
			$sql = "SELECT * FROM " . DB_PREFIX . "seller m";

			$sort_data = array(
				'firstname',
				'lastname'
			);

			if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
				$sql .= " ORDER BY " . $data['sort'];
			} else {
				$sql .= " ORDER BY firstname";
			}

			if (isset($data['order']) && ($data['order'] == 'DESC')) {
				$sql .= " DESC";
			} else {
				$sql .= " ASC";
			}

			if (isset($data['start']) || isset($data['limit'])) {
				if ($data['start'] < 0) {
					$data['start'] = 0;
				}

				if ($data['limit'] < 1) {
					$data['limit'] = 20;
				}

				$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
			}

			$query = $this->db->query($sql);

			return $query->rows;
		} else {
			$author_data = $this->cache->get('author.' . (int)$this->config->get('config_store_id'));

			if (!$author_data) {
				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "seller m ORDER BY firstname");

				$author_data = $query->rows;

				$this->cache->set('author.' . (int)$this->config->get('config_store_id'), $author_data);
			}

			return $author_data;
		}
	}
}