INSERT INTO LAYOUT_COMPONENTS ("KEY", "TYPE", "TITLE", "BADGE", "SUBTITLE", "IS_ENABLED", "IS_ACTIVE", "IS_ON", "ICON_ID", "ACTION_ID", "RENDER_ID", "WIDGET_ID", "SORT_ORDER")
VALUES
    ('catalog_filters_item_all', 'filter_reset', 't:catalog_filter_item_all', NULL, NULL, 'true', 'true', 'true', NULL, SELECT id FROM LAYOUT_ACTIONS WHERE type='filter' AND value='', SELECT id FROM LAYOUT_RENDERS WHERE key='filter_default', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('catalog_filters_item_morph', 'filter', 'morph', NULL, NULL, 'true', 'true', 'true', NULL, SELECT id FROM LAYOUT_ACTIONS WHERE type='filter' AND value='morph', SELECT id FROM LAYOUT_RENDERS WHERE key='filter_default', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('catalog_filters_item_groups', 'filter_groups', '', NULL, NULL, 'true', 'true', 'true', SELECT id FROM ICONS WHERE name='catalog_filters_group', SELECT id FROM LAYOUT_ACTIONS WHERE type='overlay' AND value='catalog_filters_group', NULL, SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('catalog_item_title', 'catalog_item_title', 'morph', NULL, NULL, 'true', 'true', 'true', NULL, NULL, NULL, SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('catalog_item_text', 'text', 'morph', NULL, NULL, 'true', 'true', 'true', NULL, NULL, SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('catalog_item_icon', 'image', 'morph', NULL, NULL, 'true', 'true', 'true', NULL, NULL, NULL, SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('catalog_item_badge_morph', 'badge', 'Скоро', NULL, NULL, 'true', 'true', 'true', NULL, NULL, SELECT id FROM LAYOUT_RENDERS WHERE key='badge_primary_white_100_warning', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('catalog_item_bullet_morph', 'bullet', 'morph', NULL, "Сум", 'true', 'true', 'true', NULL, NULL, SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('catalog_item_alert', 'alert', 'morph', NULL, NULL, 'true', 'true', 'true', NULL, NULL, NULL, SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('catalog_item_details', 'button', 't:catalog_item_details', NULL, NULL, 'true', 'true', 'true', NULL, SELECT id FROM LAYOUT_ACTIONS WHERE type='deeplink' AND value='iym://{{product_type}}/details/{{id}}', SELECT id FROM LAYOUT_RENDERS WHERE key='button_regular_secondary_standard', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('catalog_item_proceed', 'button', 'morph', NULL, NULL, 'true', 'true', 'true', NULL, SELECT id FROM LAYOUT_ACTIONS WHERE type='deeplink' AND value='morph', SELECT id FROM LAYOUT_RENDERS WHERE key='button_accent_primary_standard', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('filter_group_text', 'text', 'morph', NULL, NULL, 'true', 'true', 'true', NULL, NULL, SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('filter_group_item_all', 'filter_reset', 't:filter_group_item_all', NULL, NULL, 'true', 'true', 'true', NULL, SELECT id FROM LAYOUT_ACTIONS WHERE type='filter' AND value='morph', SELECT id FROM LAYOUT_RENDERS WHERE key='filter_outline', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('filter_group_item_morph', 'filter', 'morph', NULL, NULL, 'true', 'true', 'true', NULL, SELECT id FROM LAYOUT_ACTIONS WHERE type='filter' AND value='morph', SELECT id FROM LAYOUT_RENDERS WHERE key='filter_outline', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('card_details_name', 'text', 'morph', NULL, NULL, 'true', 'true', 'true', NULL, NULL, SELECT id FROM LAYOUT_RENDERS WHERE key='text_h2', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('card_details_badge_morph', 'badge', 'morph', NULL, NULL, 'true', 'true', 'true', NULL, NULL, SELECT id FROM LAYOUT_RENDERS WHERE key='badge_primary_white_100_warning', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('card_details_webview', 'webview', 'morph', NULL, NULL, 'true', 'true', 'true', NULL, NULL, NULL, SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('card_details_description_morph', 'text', 'morph', NULL, "Дополнительно убедительный рекламный текст, почему пользователь должен открыть карту?", 'true', 'true', 'true', NULL, NULL, SELECT id FROM LAYOUT_RENDERS WHERE key='text_b1p200', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('card_details_row_actions_text', 'text', 't:card_details_row_actions_text', NULL, NULL, 'true', 'true', 'true', NULL, NULL, SELECT id FROM LAYOUT_RENDERS WHERE key='text_b1p200', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('row_action_morph', 'row_action', 'morph', NULL, "У вас есть до 55 дней что-бы погасить потраченную сумму", 'true', 'true', 'true', SELECT id FROM ICONS WHERE name='row_actions_item_default', SELECT id FROM LAYOUT_ACTIONS WHERE type='overlay' AND value='i_credit_limit', NULL, SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('card_details_banner', 'banner', 't:card_details.201_banner_image', NULL, NULL, 'true', 'true', 'true', NULL, SELECT id FROM LAYOUT_ACTIONS WHERE type='deeplink' AND value='t:card_details.201_banner_link', NULL, SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('card_details_faq_text', 'text', 't:card_details_faq_text', NULL, NULL, 'true', 'true', 'true', NULL, NULL, SELECT id FROM LAYOUT_RENDERS WHERE key='text_b1p200', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('card_details_faq_collapse_item_morph', 'collapse_item', 'morph', NULL, "morph", 'true', 'true', 'true', NULL, NULL, NULL, SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('cards_details_conditions_text', 'text', 't:cards_details_conditions_text', NULL, NULL, 'true', 'true', 'true', NULL, NULL, SELECT id FROM LAYOUT_RENDERS WHERE key='text_b1p200', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('card_details_conditions_morph', 'bullet', 'morph', NULL, "morph", 'true', 'true', 'true', NULL, NULL, SELECT id FROM LAYOUT_RENDERS WHERE key='text_b3p300', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('card_details_price', 'bullet', 'morph', NULL, "Цена", 'true', 'true', 'true', NULL, NULL, SELECT id FROM LAYOUT_RENDERS WHERE key='text_s1_accent', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('card_details_proceed', 'button', 't:card_details_proceed', NULL, NULL, 'true', 'true', 'true', NULL, SELECT id FROM LAYOUT_ACTIONS WHERE type='deeplink' AND value='iym://{{product_type}}/issue/{{id}}', SELECT id FROM LAYOUT_RENDERS WHERE key='button_accent_primary_standard', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER});
    ('card_details_preorder', 'button', 't:card_details_preorder', NULL, NULL, 'true', 'true', 'true', NULL, SELECT id FROM LAYOUT_ACTIONS WHERE type='deeplink' AND value='iym://{{product_type}}/issue/preorder/{{id}}', SELECT id FROM LAYOUT_RENDERS WHERE key='button_accent_secondary_standard', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER});
    ('image_grace', 'image', 'https://umobile.ipakyulibank.uz:5444/api-live/uploads/resources/images/2018/12/full/ebac24b9d95e80a7a102280982e1081017a0762f.png', NULL, NULL, 'true', 'true', 'true', NULL, NULL, SELECT id FROM LAYOUT_RENDERS WHERE key='image_rectangle_4x3', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('text_grace', 'text', 't:credit_card.grace_period', NULL, "t:credit_card.grace_period_text", 'true', 'true', 'true', NULL, NULL, SELECT id FROM LAYOUT_RENDERS WHERE key='text_center_primary_h2', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER}),
    ('button_grace', 'button', 't:credit_card.grace_period_close', NULL, NULL, 'true', 'true', 'true', NULL, NULL, SELECT id FROM LAYOUT_RENDERS WHERE key='button_accent_primary_standard', SELECT id FROM LAYOUT_WIDGETS WHERE key='{WIDGET_KEY}', {SORT_ORDER});

-- TODO: Check all components are presented and fill is correct
-- Кнопки предзаказа в деталях?

-- catalog_filters_item_all - catalog_filters_carousel - 100
-- catalog_filters_item_morph - catalog_filters_carousel - 200
-- catalog_filters_item_groups - catalog_filters_carousel - 300
-- catalog_item_title - catalog_carousel_item_morph - 100
-- catalog_item_text - catalog_carousel_item_morph - 200
-- catalog_item_icon - catalog_carousel_item_morph - 300
-- catalog_item_badge_morph - catalog_carousel_item_morph - 400
-- catalog_item_bullet_morph - catalog_carousel_item_morph - 500
-- catalog_item_alert - catalog_carousel_item_morph - 600
-- catalog_item_details - catalog_carousel_item_morph - 700
-- catalog_item_proceed - catalog_carousel_item_morph - 800
-- filter_group_text - filter_group_morph - 100
-- filter_group_item_all - filter_group_morph - 200
-- filter_group_item_morph - filter_group_morph - 300
-- card_details_name - card_details_page_header - 100
-- card_details_badge_morph - card_details_page_header - 200
-- card_details_webview - card_details_description - 100
-- card_details_description_morph - card_details_description - 200
-- card_details_row_actions_text - card_details_row_actions - 100
-- row_action_morph - card_details_row_actions - 200
-- card_details_banner - card_details_banner_list - 100
-- card_details_faq_text - card_details_faq - 100
-- card_details_faq_collapse_item_morph - card_details_faq - 200
-- cards_details_conditions_text - card_details_conditions - 100
-- card_details_conditions_morph - card_details_conditions - 200
-- card_details_price - card_details_final - 100
-- card_details_proceed - card_details_final - 200
-- card_details_preorder - card_details_final - 200
-- image_grace - intro_block_grace - 100
-- text_grace - intro_block_grace - 200
-- button_grace - intro_block_grace - 300
