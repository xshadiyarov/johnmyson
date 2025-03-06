/*
Layout:
LAYOUT_RENDERS
LAYOUT_ACTIONS
LAYOUT_PAGES
LAYOUT_SECTIONS
LAYOUT_WIDGETS
LAYOUT_COMPONENTS
LAYOUT_OVERLAYS

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
    (catalog),
    (card_details);

INSERT INTO LAYOUT_OVERLAYS ("PAGE_ID", "KEY", "TYPE", "HEADER", "SORT_ORDER")
VALUES
-- TODO: Тк overlay крепиться за страницей мы не сможем его переиспользовать меж нескольких, замапь пока к конкретным, потом найдешь дешевое решение
    (SELECT id FROM LAYOUT_PAGES WHERE KEY='catalog', 'catalog_filters_group', 'filter_bottom_menu', '{"title":"t:catalog_filters_group"}', 100),
    (SELECT id FROM LAYOUT_PAGES WHERE KEY='card_details', 'i_credit_limit_menu', 'slides_bottom_menu', '{"title":"t:i_credit_limit_menu"}', 100);

INSERT INTO LAYOUT_SECTIONS ("KEY", "SORT_ORDER", "PAGE_ID", "OVERLAY_ID")
VALUES
    ('catalog_filter', 100, SELECT id FROM LAYOUT_PAGES WHERE KEY='catalog', NULL),
    ('catalog_carousel', 200, SELECT id FROM LAYOUT_PAGES WHERE KEY='catalog', NULL),
    ('card_details_default', 100, SELECT id FROM LAYOUT_PAGES WHERE KEY='card_details', NULL),
    ('catalog_filters_group_default', 100, NULL, SELECT id FROM LAYOUT_OVERLAYS WHERE KEY='catalog_filters_group'),
    ('i_credit_limit_grace', 100, NULL, SELECT id FROM LAYOUT_OVERLAYS WHERE KEY='i_credit_limit_menu');

INSERT INTO LAYOUT_WIDGETS ("KEY", "TYPE", "SORT_ORDER", "SECTION_ID")
VALUES
-- catalog_filters_carousel
-- catalog_carousel_item_morph
-- filter_group_morph
-- intro_block_grace
-- card_details_page_header
-- card_details_description
-- card_details_row_actions
-- card_details_banner_list
-- custom_design
-- card_details_faq
-- card_details_conditions
-- card_details_final

INSERT INTO LAYOUT_COMPONENTS ("KEY", "TYPE", "TITLE", "BADGE", "SUBTITLE", "IS_ENABLED", "IS_ACTIVE", "IS_ON", "ICON_ID", "ACTION_ID", "WIDGET_ID", "SORT_ORDER")
VALUES
-- catalog_filters_item_all
-- catalog_filters_item_morph
-- catalog_filters_item_groups
-- catalog_item_title
-- catalog_item_text
-- catalog_item_icon
-- catalog_item_badge_morph
-- catalog_item_alert
-- catalog_item_details
-- catalog_item_proceed
-- filter_group_text
-- filter_group_item_all
-- filter_group_item_morph
-- slides_bottom_menu
-- image_grace
-- text_grace
-- button_benefit
-- card_details_bullets_text
-- card_details_badge_morph
-- card_details_webview
-- card_details_description_morph
-- card_details_faq_text
-- row_action_morph
-- card_details_banner
-- card_details_faq_collapse_item_morph
-- cards_details_conditions_text
-- card_details_conditions_morph
-- card_details_price
-- card_details_proceed
