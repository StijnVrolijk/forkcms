<?php

/*
 * This file is part of Fork CMS.
 *
 * For the full copyright and license information, please view the license
 * file that was distributed with this source code.
 */

/**
 * This action will delete a partner
 *
 * @author Jelmer Prins <jelmer@ubuntu.com>
 */
class BackendPartnersDelete extends BackendBaseActionDelete
{
    /**
     * Execute the action
     */
    public function execute()
    {
        $this->id = $this->getParameter('id', 'int');
        // does the item exist
        if ($this->id == null || !BackendPartnersModel::partnerExists($this->id)) {
            $this->redirect(BackendModel::createURLForAction('index') . '&error=non-existing');
        }
        // get data
        $this->record = (array) BackendPartnersModel::getPartner($this->id);

        // delete item
        BackendPartnersModel::deletePartner($this->id);
        //delete the image
        SpoonFile::delete(
            FRONTEND_FILES_PATH . '/' . FrontendPartnersModel::IMAGE_PATH . '/source/' . $this->record['img']
        );
        // item was deleted, so redirect
        $this->redirect(
            BackendModel::createURLForAction('widget') . '&id=' . $this->getParameter('widget_id', 'int') . '&report=deleted&var=' . urlencode($this->record['name'])
        );
    }
}
