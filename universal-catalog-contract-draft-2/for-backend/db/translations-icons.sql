/*
Tables:
TRANSLATIONS
ICONS
*/

INSERT INTO TRANSLATIONS  (CODE, RU, EN, UZ, MODULE)
VALUES
    ('catalog_filters_group','Фильтр','','','main'),
    ('i_credit_limit_menu','Льготный период','','','cards'),
    ('catalog_filter_item_all','Все','','','main'),
    ('catalog_item_details','Подробнее','','','main'),
    ('catalog_item_issue','Оформить','','','main'),
    ('catalog_item_open','Открыть','','','main'),
    ('filter_group_item_all','Все','','','main'),
    ('card_details_row_actions_text','Почему эта карта?','','','cards'),
    ('card_details.201_banner_image','https://umobile.ipakyulibank.uz:5444/api-live/uploads/resources/images/2022/05/full/e8395ab0b365f72be31b72685f8ae9936f587188.png','https://umobile.ipakyulibank.uz:5444/api-live/uploads/resources/images/2022/05/full/e8395ab0b365f72be31b72685f8ae9936f587188.png','https://umobile.ipakyulibank.uz:5444/api-live/uploads/resources/images/2022/05/full/e8395ab0b365f72be31b72685f8ae9936f587188.png','cards'),
    ('card_details.201_banner_link','https://ru.ipakyulibank.uz/physical/plateji-i-perevody','https://ru.ipakyulibank.uz/physical/plateji-i-perevody','https://ru.ipakyulibank.uz/physical/plateji-i-perevody','cards'),
    ('card_details_faq_text','Остались вопросы?','','','cards'),
    ('cards_details_conditions_text','Условия','','','cards'),
    ('card_details_price','Цена','','','cards'),
    ('card_details_proceed_issue','Продолжить','','','cards'),
    ('card_details_proceed_open','Продолжить','','','cards'),
    ('card_details_proceed_preorder','Сделать предзаказ','','','cards'),
    ('credit_card.grace_period','Льготный период','','','cards'),
    ('credit_card.grace_period_text','Период, в который вы не платите проценты за использование кредитных средств. Погасите задолженность до конца этого периода и не платите проценты.','','',''),
    ('credit_card.grace_period_close','ОК','','','cards');

INSERT INTO ICONS (name, type, link, dark_link)
VALUES
    ('catalog_filters_group', 'target-main', '/images/icons/filters_group.png', '/images/icons/filters_group.png'),
    ('row_actions_item_default', 'target-main', '/images/icons/info.png', '/images/icons/info.png');
