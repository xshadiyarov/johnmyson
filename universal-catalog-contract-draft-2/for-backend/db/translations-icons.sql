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

-- Success page

INSERT INTO TRANSLATIONS  (CODE, RU, EN, UZ, MODULE)
VALUES
    ('quick_fiscal_qr','Фискальный чек','','','main'),
    ('cta_enable_notifications','Включить уведомления','','','main'),
    ('success_page_close','Выйти','','','main'),
    ('application_issued','Заявка оформлена','','','main'),
    ('application_issued_text_notifications','Вы можете узнать статус на странице “Мои заявки”. Также мы сообщим о статусе Вашей заявки посредством пуш уведомления.\\n\\nЧто бы не пропустить его, включите уведомления через  настройки вашего смартфона','','','main'),
    ('application_issued_text','Вы можете узнать статус на странице “Мои заявки”. Также мы сообщим о статусе Вашей заявки посредством пуш уведомления.\\n\\nСпасибо, что выбрали нас','','','main'),
    ('card_issued_text_notifications','Когда карта будет готова, мы направим вам ПУШ-уведомления.\\n\\nЧто бы не пропустить его, включите уведомления через  настройки вашего смартфона','','','main'),
    ('card_issued_text','Когда карта будет готова, мы направим вам ПУШ-уведомления.\\n\\nСпасибо, что выбрали нас','','','main');

INSERT INTO ICONS (name, type, link, dark_link)
VALUES
    ('quick_fiscal_qr.icon','target-main','/images/icons/quick_fiscal_qr.icon.png', NULL);
