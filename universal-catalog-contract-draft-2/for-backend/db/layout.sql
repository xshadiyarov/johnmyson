/*
Layout:
LAYOUT_RENDERS
LAYOUT_ACTIONS
LAYOUT_PAGES
LAYOUT_OVERLAYS
LAYOUT_SECTIONS
LAYOUT_WIDGETS
LAYOUT_COMPONENTS

Disclaimer:
Это не тестовая разметка, убедительная просьба проверить ее корректность.
Для сравнение см. контракты запросов v1/products, v1/products/details.
*/

INSERT INTO LAYOUT_RENDERS ("KEY", "STYLE", "PRIORITY", "ELEMENT_SIZE", "COLOR", "BACKGROUND_COLOR")
VALUES
    ('filter_default', 'Default', NULL, NULL, NULL, NULL),
    ('text_b2p300', 'B-2-p300', NULL, NULL, NULL, NULL),
    ('badge_primary_white_100_warning', NULL, 'Primary', NULL, 'White 100', 'Warning'),
    ('button_regular_secondary_standard', 'Regular', 'Secondary', 'Standard', NULL, NULL),
    ('badge_secondary_warning_warning', NULL, 'Secondary', NULL, 'Warning', 'Warning'),
    ('badge_secondary_purple_purple', NULL, 'Secondary', NULL, 'Purple', 'Purple'),
    ('text_b2p300_accent', 'B-2-p300', NULL, NULL, 'Accent', NULL),
    ('button_accent_primary_standard', 'Accent', 'Primary', 'Standard', NULL, NULL),
    ('button_accent_secondary_standard', 'Accent', 'Secondary', 'Standard', NULL, NULL),
    ('badge_secondary_turquoise_sup_turquoise', NULL, 'Secondary', NULL, 'Turquoise Sup', 'Turquoise'),
    ('badge_primary_white_100_lightgreen', NULL, 'Primary', NULL, 'White 100', 'LightGreen'),
    ('badge_secondary_accent_accent', NULL, 'Secondary', NULL, 'Accent', 'Accent'),
    ('badge_secondary_yellow_sup_yellow', NULL, 'Secondary', NULL, 'Yellow Sup', 'Yellow'),
    ('badge_primary_white_100_black_100', NULL, 'Primary', NULL, 'White 100', 'Black 100'),
    ('filter_outline', 'Outline', NULL, NULL, NULL, NULL),
    ('image_rectangle_4x3', 'Rectangle', NULL, '4x3', NULL, NULL),
    ('text_center_primary_h2', 'Center', 'Primary', 'H2', NULL, NULL),
    ('text_h2', 'H2', NULL, NULL, NULL, NULL),
    ('text_b1p200', 'B-1-p200', NULL, NULL, NULL, NULL),
    ('text_b3p300', 'B-3-p300', NULL, NULL, NULL, NULL),
    ('text_s1_accent', 'S-1', NULL, NULL, 'Accent', NULL);

INSERT INTO LAYOUT_ACTIONS ("TYPE", "VALUE")
VALUES
    ('filter', ''),
    ('filter', 'morph'),
    ('overlay', 'catalog_filters_group'),
    ('overlay', 'i_credit_limit'),
    ('deeplink', 'iym://{{product_type}}/details/{{id}}'),
    ('deeplink', 'iym://{{product_type}}/issue/{{id}}'),
    ('deeplink', 'iym://{{product_type}}/issue/prepayment/{{id}}');

INSERT INTO LAYOUT_PAGES ("KEY")
VALUES
    ('catalog'),
    ('card_details');

INSERT INTO LAYOUT_OVERLAYS ("PAGE_ID", "KEY", "TYPE", "HEADER", "SORT_ORDER")
VALUES
    ((SELECT id FROM LAYOUT_PAGES WHERE KEY='catalog'), 'catalog_filters_group', 'filter_bottom_menu', '{"title":"t:catalog_filters_group"}', 100),
    ((SELECT id FROM LAYOUT_PAGES WHERE KEY='card_details'), 'i_credit_limit_menu', 'slides_bottom_menu', '{"title":"t:i_credit_limit_menu"}', 100);

INSERT INTO LAYOUT_SECTIONS ("KEY", "SORT_ORDER", "PAGE_ID", "OVERLAY_ID")
VALUES
    ('catalog_filter', 100, (SELECT id FROM LAYOUT_PAGES WHERE KEY='catalog', NULL)),
    ('catalog_carousel', 200, (SELECT id FROM LAYOUT_PAGES WHERE KEY='catalog', NULL)),
    ('card_details_default', 100, (SELECT id FROM LAYOUT_PAGES WHERE KEY='card_details', NULL)),
    ('catalog_filters_group_default', 100, NULL, (SELECT id FROM LAYOUT_OVERLAYS WHERE KEY='catalog_filters_group')),
    ('i_credit_limit_grace', 100, NULL, (SELECT id FROM LAYOUT_OVERLAYS WHERE KEY='i_credit_limit_menu'));

INSERT INTO LAYOUT_WIDGETS ("KEY", "TYPE", "SORT_ORDER", "SECTION_ID", "IS_ACTIVE")
VALUES
    ('catalog_filters_carousel', 'filter_carousel', 100, (SELECT id FROM LAYOUT_SECTIONS WHERE KEY='catalog_filter'), 'true'),
    ('catalog_carousel_item_morph', 'catalog_item', 100, (SELECT id FROM LAYOUT_SECTIONS WHERE KEY='catalog_carousel'), 'true'),
    ('filter_group_morph', 'filter_group', 100, (SELECT id FROM LAYOUT_SECTIONS WHERE KEY='catalog_filters_group_default'), 'true'),
    ('intro_block_grace', 'intro_block', 100, (SELECT id FROM LAYOUT_SECTIONS WHERE KEY='i_credit_limit_grace'), 'true'),
    ('card_details_page_header', 'page_header', 100, (SELECT id FROM LAYOUT_SECTIONS WHERE KEY='card_details_default'), 'true'),
    ('card_details_description', 'generic', 200, (SELECT id FROM LAYOUT_SECTIONS WHERE KEY='card_details_default'), 'true'),
    ('card_details_row_actions', 'row_actions', 300, (SELECT id FROM LAYOUT_SECTIONS WHERE KEY='card_details_default'), 'true'),
    ('card_details_banner_list', 'banner_list', 400, (SELECT id FROM LAYOUT_SECTIONS WHERE KEY='card_details_default'), 'true'),
    ('custom_design', 'custom_design', 500, (SELECT id FROM LAYOUT_SECTIONS WHERE KEY='card_details_default', '{"has_custom_desi)gn":1}'),
    ('card_details_faq', 'collapse_group', 600, (SELECT id FROM LAYOUT_SECTIONS WHERE KEY='card_details_default'), 'true'),
    ('card_details_conditions', 'bullet_list', 700, (SELECT id FROM LAYOUT_SECTIONS WHERE KEY='card_details_default'), 'true'),
    ('card_details_final', 'generic', 800, (SELECT id FROM LAYOUT_SECTIONS WHERE KEY='card_details_default'), 'true');
    
INSERT INTO LAYOUT_COMPONENTS ("KEY", "TYPE", "TITLE", "BADGE", "SUBTITLE", "IS_ENABLED", "IS_ACTIVE", "IS_ON", "ICON_ID", "ACTION_ID", "RENDER_ID", "WIDGET_ID", "SORT_ORDER")
VALUES
    ('catalog_filters_item_all','filter_reset','t:catalog_filter_item_all',NULL,NULL,'true','true','true',NULL,(SELECT id FROM LAYOUT_ACTIONS WHERE type='filter' AND value=''),(SELECT id FROM LAYOUT_RENDERS WHERE key='filter_default'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='catalog_filters_carousel'),100),
    ('catalog_filters_item_morph','filter','morph',NULL,NULL,'true','true','true',NULL,(SELECT id FROM LAYOUT_ACTIONS WHERE type='filter' AND value='morph'),(SELECT id FROM LAYOUT_RENDERS WHERE key='filter_default'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='catalog_filters_carousel'),200),
    ('catalog_filters_item_groups','filter_groups','',NULL,NULL,'true','true','true',(SELECT id FROM ICONS WHERE name='catalog_filters_group'),(SELECT id FROM LAYOUT_ACTIONS WHERE type='overlay' AND value='catalog_filters_group'),NULL,(SELECT id FROM LAYOUT_WIDGETS WHERE key='catalog_filters_carousel'),300),
    ('catalog_item_title','catalog_item_title','morph',NULL,NULL,'true','true','true',NULL,NULL,NULL,(SELECT id FROM LAYOUT_WIDGETS WHERE key='catalog_carousel_item_morph'),100),
    ('catalog_item_text','text','morph',NULL,NULL,'true','true','true',NULL,NULL,(SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='catalog_carousel_item_morph'),200),
    ('catalog_item_icon','image','morph',NULL,NULL,'true','true','true',NULL,NULL,NULL,(SELECT id FROM LAYOUT_WIDGETS WHERE key='catalog_carousel_item_morph'),300),
    ('catalog_item_badge_morph','badge','morph',NULL,NULL,'true','true','true',NULL,NULL,(SELECT id FROM LAYOUT_RENDERS WHERE key='badge_primary_white_100_warning'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='catalog_carousel_item_morph'),400),
    ('catalog_item_bullet_morph','bullet','morph',NULL,"morph",'true','true','true',NULL,NULL,(SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='catalog_carousel_item_morph'),500),
    ('catalog_item_alert','alert','morph',NULL,NULL,'true','true','true',NULL,NULL,NULL,(SELECT id FROM LAYOUT_WIDGETS WHERE key='catalog_carousel_item_morph'),600),
    ('catalog_item_details','button','t:catalog_item_details',NULL,NULL,'true','true','true',NULL,(SELECT id FROM LAYOUT_ACTIONS WHERE type='deeplink' AND value='iym://{{product_type}}/details/{{id}}'),(SELECT id FROM LAYOUT_RENDERS WHERE key='button_regular_secondary_standard'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='catalog_carousel_item_morph'),700),
    ('catalog_item_issue','button','t:catalog_item_issue',NULL,NULL,'true','{"is_virtual":0}','true',NULL,(SELECT id FROM LAYOUT_ACTIONS WHERE type='deeplink' AND value='iym://{{product_type}}/issue/{{id}}'),(SELECT id FROM LAYOUT_RENDERS WHERE key='button_accent_primary_standard'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='catalog_carousel_item_morph'),800),
    ('catalog_item_open','button','t:catalog_item_open',NULL,NULL,'true','{"is_virtual":1}','true',NULL,(SELECT id FROM LAYOUT_ACTIONS WHERE type='deeplink' AND value='iym://{{product_type}}/issue/prepayment{{id}}'),(SELECT id FROM LAYOUT_RENDERS WHERE key='button_accent_primary_standard'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='catalog_carousel_item_morph'),800),
    ('filter_group_text','text','morph',NULL,NULL,'true','true','true',NULL,NULL,(SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='filter_group_morph'),100),
    ('filter_group_item_all','filter_reset','t:filter_group_item_all',NULL,NULL,'true','true','true',NULL,(SELECT id FROM LAYOUT_ACTIONS WHERE type='filter' AND value='morph'),(SELECT id FROM LAYOUT_RENDERS WHERE key='filter_outline'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='filter_group_morph'),200),
    ('filter_group_item_morph','filter','morph',NULL,NULL,'true','true','true',NULL,(SELECT id FROM LAYOUT_ACTIONS WHERE type='filter' AND value='morph'),(SELECT id FROM LAYOUT_RENDERS WHERE key='filter_outline'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='filter_group_morph'),300),
    ('card_details_name','text','morph',NULL,NULL,'true','true','true',NULL,NULL,(SELECT id FROM LAYOUT_RENDERS WHERE key='text_h2'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='card_details_page_header'),100),
    ('card_details_badge_morph','badge','morph',NULL,NULL,'true','true','true',NULL,NULL,(SELECT id FROM LAYOUT_RENDERS WHERE key='badge_primary_white_100_warning'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='card_details_page_header'),200),
    ('card_details_webview','webview','morph',NULL,NULL,'true','true','true',NULL,NULL,NULL,(SELECT id FROM LAYOUT_WIDGETS WHERE key='card_details_description'),100),
    ('card_details_description_morph','text','morph',NULL,"morph",'true','true','true',NULL,NULL,(SELECT id FROM LAYOUT_RENDERS WHERE key='text_b1p200'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='card_details_description'),200),
    ('card_details_row_actions_text','text','t:card_details_row_actions_text',NULL,NULL,'true','true','true',NULL,NULL,(SELECT id FROM LAYOUT_RENDERS WHERE key='text_b1p200'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='card_details_row_actions'),100),
    ('row_action_morph','row_action','morph',NULL,"morph",'true','true','true',(SELECT id FROM ICONS WHERE name='row_actions_item_default'),(SELECT id FROM LAYOUT_ACTIONS WHERE type='overlay' AND value='i_credit_limit'),NULL,(SELECT id FROM LAYOUT_WIDGETS WHERE key='card_details_row_actions'),200),
    ('card_details_banner','banner','morph',NULL,NULL,'true','morph','true',NULL,(SELECT id FROM LAYOUT_ACTIONS WHERE type='deeplink' AND value='morph'),NULL,(SELECT id FROM LAYOUT_WIDGETS WHERE key='card_details_banner_list'),100),
    ('card_details_faq_text','text','t:card_details_faq_text',NULL,NULL,'true','true','true',NULL,NULL,(SELECT id FROM LAYOUT_RENDERS WHERE key='text_b1p200'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='card_details_faq'),100),
    ('card_details_faq_collapse_item_morph','collapse_item','morph',NULL,"morph",'true','true','true',NULL,NULL,NULL,(SELECT id FROM LAYOUT_WIDGETS WHERE key='card_details_faq'),200),
    ('cards_details_conditions_text','text','t:cards_details_conditions_text',NULL,NULL,'true','true','true',NULL,NULL,(SELECT id FROM LAYOUT_RENDERS WHERE key='text_b1p200'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='card_details_conditions'),100),
    ('card_details_conditions_morph','bullet','morph',NULL,"morph",'true','true','true',NULL,NULL,(SELECT id FROM LAYOUT_RENDERS WHERE key='text_b3p300'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='card_details_conditions'),200),
    ('card_details_price','bullet','t:card_details_price',NULL,"morph",'true','true','true',NULL,NULL,(SELECT id FROM LAYOUT_RENDERS WHERE key='text_s1_accent'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='card_details_final'),100),
    ('card_details_proceed_issue','button','t:card_details_proceed_issue',NULL,NULL,'true','{"is_virtual":0}','true',NULL,(SELECT id FROM LAYOUT_ACTIONS WHERE type='deeplink' AND value='iym://{{product_type}}/issue/{{id}}'),(SELECT id FROM LAYOUT_RENDERS WHERE key='button_accent_primary_standard'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='card_details_final'),200),
    ('card_details_proceed_open','button','t:card_details_proceed_open',NULL,NULL,'true','{"is_virtual":1}','true',NULL,(SELECT id FROM LAYOUT_ACTIONS WHERE type='deeplink' AND value='iym://{{product_type}}/issue/prepayment/{{id}}'),(SELECT id FROM LAYOUT_RENDERS WHERE key='button_accent_primary_standard'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='card_details_final'),200),
    ('card_details_proceed_preorder','button','t:card_details_proceed_preorder',NULL,NULL,'true','false','true',NULL,(SELECT id FROM LAYOUT_ACTIONS WHERE type='deeplink' AND value='iym://{{product_type}}/issue/preorder/{{id}}'),(SELECT id FROM LAYOUT_RENDERS WHERE key='button_accent_secondary_standard'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='card_details_final'),200),
    ('image_grace','image','https://umobile.ipakyulibank.uz:5444/api-live/uploads/resources/images/2018/12/full/ebac24b9d95e80a7a102280982e1081017a0762f.png',NULL,NULL,'true','true','true',NULL,NULL,(SELECT id FROM LAYOUT_RENDERS WHERE key='image_rectangle_4x3'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='intro_block_grace'),100),
    ('text_grace','text','t:credit_card.grace_period',NULL,"t:credit_card.grace_period_text",'true','true','true',NULL,NULL,(SELECT id FROM LAYOUT_RENDERS WHERE key='text_center_primary_h2'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='intro_block_grace'),200),
    ('button_grace','button','t:credit_card.grace_period_close',NULL,NULL,'true','true','true',NULL,NULL,(SELECT id FROM LAYOUT_RENDERS WHERE key='button_accent_primary_standard'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='intro_block_grace'),300);

-- Success page

INSERT INTO LAYOUT_RENDERS ("KEY", "STYLE", "PRIORITY", "ELEMENT_SIZE", "COLOR", "BACKGROUND_COLOR")
VALUES
    ('text_h2_white_100', 'H-2', NULL, NULL, 'White 100', NULL),
    ('text_b1_white_100', 'B-1', NULL, NULL, 'White 100', NULL),
    ('button_accent_tritery_standard', 'Accent', 'Tritery', 'Standard', NULL, NULL);

INSERT INTO LAYOUT_ACTIONS ("TYPE", "VALUE")
VALUES
    ('browser', 'morph'),
    ('settings', '');

INSERT INTO LAYOUT_PAGES ("KEY")
VALUES
    ('success_page');

INSERT INTO LAYOUT_SECTIONS ("KEY", "SORT_ORDER", "PAGE_ID", "OVERLAY_ID")
VALUES
    ('success_page_primary', 100, (SELECT id FROM LAYOUT_PAGES WHERE KEY='success_page'), NULL),
    ('success_page_secondary', 200, (SELECT id FROM LAYOUT_PAGES WHERE KEY='success_page'), NULL);

INSERT INTO LAYOUT_WIDGETS ("KEY", "TYPE", "SORT_ORDER", "SECTION_ID", "IS_ACTIVE")
VALUES
    ('success_page_text', 'success_block', 100, (SELECT id FROM LAYOUT_SECTIONS WHERE KEY='success_page_primary'), 'true'),
    ('success_page_quick_actions', 'quick_actions', 100, (SELECT id FROM LAYOUT_SECTIONS WHERE KEY='success_page_secondary'), '{"gni":true}'),
    ('success_page_actions', 'button_stack', 200, (SELECT id FROM LAYOUT_SECTIONS WHERE KEY='success_page_secondary'), 'true');

INSERT INTO LAYOUT_COMPONENTS ("KEY", "TYPE", "TITLE", "BADGE", "SUBTITLE", "IS_ENABLED", "IS_ACTIVE", "IS_ON", "ICON_ID", "ACTION_ID", "RENDER_ID", "WIDGET_ID", "SORT_ORDER")
VALUES
    ('success_page_title','text','morph',NULL,NULL,'true','true','true',NULL,NULL,(SELECT id FROM LAYOUT_RENDERS WHERE key='text_h2_white_100'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='success_page_text'),100),
    ('success_page_description','text','morph',NULL,NULL,'true','true','true',NULL,NULL,(SELECT id FROM LAYOUT_RENDERS WHERE key='text_b1_white_100'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='success_page_text'), 200),
    ('success_page_fiscal_qr','quick_action','t:quick_fiscal_qr',NULL,NULL,'true','{"gni":true}','true','quick_fiscal_qr.icon',(SELECT id FROM LAYOUT_ACTIONS WHERE type='browser' AND value='morph'),NULL,(SELECT id FROM LAYOUT_WIDGETS WHERE key='success_page_quick_actions'),100),
    ('success_page_settings','button','t:cta_enable_notifications',NULL,NULL,'true','{"app_notifications":true}','true',NULL,(SELECT id FROM LAYOUT_ACTIONS WHERE type='settings' AND value=''),(SELECT id FROM LAYOUT_RENDERS WHERE key='button_regular_secondary_standard'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='success_page_actions'),100),
    ('success_page_exit','button','t:success_page_close',NULL,NULL,'true','{"app_notifications":true}','true',NULL,(SELECT id FROM LAYOUT_ACTIONS WHERE type='deeplink' AND value='iym://main'),(SELECT id FROM LAYOUT_RENDERS WHERE key='button_accent_tritery_standard'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='success_page_actions'),200),
    ('success_page_exit','button','t:success_page_close',NULL,NULL,'true','{"app_notifications":false}','true',NULL,(SELECT id FROM LAYOUT_ACTIONS WHERE type='deeplink' AND value='iym://main'),(SELECT id FROM LAYOUT_RENDERS WHERE key='button_regular_secondary_standard'),(SELECT id FROM LAYOUT_WIDGETS WHERE key='success_page_actions'),200);
