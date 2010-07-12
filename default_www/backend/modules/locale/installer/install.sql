DROP TABLE IF EXISTS `locale`;
CREATE TABLE IF NOT EXISTS `locale` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `language` varchar(5) collate utf8_unicode_ci NOT NULL,
  `application` varchar(255) collate utf8_unicode_ci NOT NULL,
  `module` varchar(255) collate utf8_unicode_ci NOT NULL,
  `type` enum('act','err','lbl','msg') collate utf8_unicode_ci NOT NULL default 'lbl',
  `name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `value` text collate utf8_unicode_ci,
  `edited_on` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;


INSERT INTO `locale` (`user_id`, `language`, `application`, `module`, `type`, `name`, `value`, `edited_on`) VALUES
(1, 'nl', 'backend', 'core', 'lbl', 'Title', 'titel', '2010-06-15 13:23:24'),
(1, 'nl', 'backend', 'core', 'lbl', 'Add', 'toevoegen', '2010-06-22 13:19:02'),
(1, 'nl', 'backend', 'core', 'lbl', 'Name', 'naam', '2010-06-15 13:26:02'),
(1, 'nl', 'backend', 'core', 'lbl', 'Value', 'waarde', '2010-06-15 13:26:11'),
(1, 'nl', 'backend', 'core', 'lbl', 'Settings', 'instellingen', '2010-06-15 13:26:18'),
(1, 'nl', 'backend', 'core', 'lbl', 'Module', 'module', '2010-06-15 13:52:58'),
(1, 'nl', 'backend', 'core', 'lbl', 'ChooseALanguage', 'kies een taal', '2010-06-15 13:53:09'),
(1, 'nl', 'backend', 'core', 'lbl', 'ChooseAnApplication', 'kies een applicatie', '2010-06-16 11:06:20'),
(1, 'nl', 'backend', 'core', 'lbl', 'Type', 'type', '2010-06-15 13:53:30'),
(1, 'nl', 'backend', 'core', 'lbl', 'Translations', 'vertalingen', '2010-06-15 13:53:45'),
(1, 'nl', 'backend', 'core', 'lbl', 'ChooseAModule', 'kies een module', '2010-06-15 13:53:55'),
(1, 'nl', 'backend', 'core', 'lbl', 'Application', 'applicatie', '2010-06-15 13:54:03'),
(1, 'nl', 'backend', 'core', 'lbl', 'Language', 'taal', '2010-06-15 13:54:10'),
(1, 'nl', 'backend', 'core', 'lbl', 'Edit', 'wijzigen', '2010-06-23 14:10:52'),
(1, 'nl', 'backend', 'core', 'lbl', 'ChooseAType', 'kies een type', '2010-06-15 13:55:09'),
(1, 'nl', 'backend', 'core', 'lbl', 'Tags', 'tags', '2010-06-15 13:56:27'),
(1, 'nl', 'backend', 'core', 'lbl', 'Blog', 'blog', '2010-06-15 13:56:39'),
(1, 'nl', 'backend', 'core', 'lbl', 'Dashboard', 'dashboard', '2010-06-15 13:56:51'),
(1, 'nl', 'backend', 'core', 'lbl', 'Pages', 'pagina''s', '2010-06-15 13:56:57'),
(1, 'nl', 'backend', 'core', 'lbl', 'SignOut', 'afmelden', '2010-06-15 13:57:19'),
(1, 'nl', 'backend', 'core', 'lbl', 'DebugMode', 'debug mode', '2010-06-15 14:05:37'),
(1, 'nl', 'backend', 'core', 'lbl', 'WebsiteWorkingLanguage', 'werktaal website', '2010-06-23 15:51:59'),
(1, 'nl', 'backend', 'core', 'lbl', 'ContentBlocks', 'inhoudsblokken', '2010-06-15 14:06:27'),
(1, 'nl', 'backend', 'core', 'lbl', 'UpdateFilter', 'filter updaten', '2010-06-15 14:06:44'),
(1, 'nl', 'backend', 'core', 'lbl', 'Delete', 'verwijderen', '2010-06-15 14:07:31'),
(1, 'nl', 'backend', 'core', 'lbl', 'Execute', 'uitvoeren', '2010-06-15 14:07:38'),
(1, 'nl', 'backend', 'core', 'lbl', 'WithSelected', 'met geselecteerde', '2010-06-15 14:07:54'),
(1, 'nl', 'backend', 'core', 'msg', 'NL', 'Nederlands', '2010-06-15 14:09:46'),
(1, 'nl', 'backend', 'core', 'msg', 'FR', 'Frans', '2010-06-15 14:10:08'),
(1, 'nl', 'backend', 'core', 'msg', 'EN', 'Engels', '2010-06-15 14:10:14'),
(1, 'nl', 'backend', 'core', 'msg', 'DE', 'Duits', '2010-06-15 14:10:27'),
(1, 'nl', 'backend', 'core', 'msg', 'ES', 'Spaans', '2010-06-15 14:18:47'),
(1, 'nl', 'backend', 'core', 'msg', 'Added', 'Het item werd toegevoegd.', '2010-06-15 14:19:15'),
(1, 'nl', 'backend', 'core', 'msg', 'Edited', 'Het item werd opgeslagen.', '2010-06-23 14:14:00'),
(1, 'nl', 'backend', 'core', 'lbl', 'Profile', 'profiel', '2010-07-08 14:01:30'),
(1, 'nl', 'backend', 'core', 'lbl', 'Password', 'wachtwoord', '2010-06-16 13:50:36'),
(1, 'nl', 'backend', 'core', 'lbl', 'Userguide', 'userguide', '2010-06-16 06:52:11'),
(1, 'nl', 'backend', 'core', 'lbl', 'SignIn', 'Log in', '2010-06-16 06:52:35'),
(1, 'nl', 'backend', 'core', 'lbl', 'Developer', 'developer', '2010-06-16 06:52:54'),
(1, 'nl', 'backend', 'core', 'msg', 'ForgotPassword', 'Wachtwoord vergeten?', '2010-06-16 07:08:25'),
(1, 'nl', 'backend', 'core', 'msg', 'HelpForgotPassword', 'Vul hieronder je e-mail adres in. Je krijgt een e-mail met instructies hoe je een nieuw wachtwoord instelt.', '2010-06-16 07:11:29'),
(1, 'nl', 'backend', 'core', 'lbl', 'Email', 'e-mail', '2010-06-16 07:10:09'),
(1, 'nl', 'backend', 'core', 'lbl', 'Send', 'verzenden', '2010-06-16 07:10:42'),
(1, 'nl', 'backend', 'core', 'msg', 'NoItems', 'Er zijn geen items.', '2010-06-23 15:42:18'),
(1, 'nl', 'backend', 'core', 'err', 'EmailIsRequired', 'Gelieve een e-mailadres in te geven.', '2010-07-08 14:00:42'),
(1, 'nl', 'backend', 'core', 'err', 'PasswordIsRequired', 'Gelieve een wachtwoord in te geven.', '2010-06-16 07:39:21'),
(1, 'nl', 'backend', 'core', 'lbl', 'Locale', 'locale', '2010-06-16 07:46:16'),
(1, 'nl', 'backend', 'core', 'err', 'FieldIsRequired', 'Dit veld is verplicht.', '2010-06-16 07:54:45'),
(1, 'nl', 'backend', 'core', 'err', 'InvalidName', 'Ongeldige naam.', '2010-06-16 07:56:21'),
(1, 'nl', 'backend', 'core', 'err', 'InvalidValue', 'Ongeldige waarde.', '2010-06-17 06:36:32'),
(1, 'nl', 'backend', 'core', 'err', 'FormError', 'Er ging iets mis, kijk de gemarkeerde velden na.', '2010-06-16 08:06:48'),
(1, 'nl', 'backend', 'core', 'msg', 'Deleted', 'Het item werd verwijderd.', '2010-06-16 08:52:08'),
(1, 'nl', 'backend', 'core', 'lbl', 'Save', 'opslaan', '2010-06-16 09:24:21'),
(1, 'nl', 'backend', 'core', 'lbl', 'Core', 'core', '2010-06-16 13:06:41'),
(1, 'nl', 'backend', 'core', 'lbl', 'Statistics', 'statistieken', '2010-06-30 14:36:19'),
(1, 'nl', 'backend', 'core', 'lbl', 'News', 'nieuws', '2010-06-16 13:07:12'),
(1, 'nl', 'backend', 'core', 'lbl', 'Users', 'gebruikers', '2010-06-16 13:07:19'),
(1, 'nl', 'backend', 'core', 'lbl', 'Sitemap', 'sitemap', '2010-06-16 13:07:29'),
(1, 'nl', 'backend', 'core', 'lbl', 'Contact', 'contact', '2010-06-16 13:07:41'),
(1, 'nl', 'backend', 'core', 'lbl', 'Example', 'voorbeeld', '2010-06-16 13:07:51'),
(1, 'nl', 'backend', 'core', 'lbl', 'Nickname', 'publicatienaam', '2010-06-30 13:51:26'),
(1, 'nl', 'backend', 'core', 'lbl', 'Modules', 'modules', '2010-06-16 13:42:21'),
(1, 'nl', 'backend', 'core', 'lbl', 'Templates', 'templates', '2010-06-16 13:42:31'),
(1, 'nl', 'backend', 'core', 'lbl', 'General', 'algemeen', '2010-06-16 13:42:42'),
(1, 'nl', 'backend', 'core', 'lbl', 'Permissions', 'rechten', '2010-06-16 13:44:51'),
(1, 'nl', 'backend', 'core', 'lbl', 'LoginCredentials', 'login gegevens', '2010-06-30 13:54:42'),
(1, 'nl', 'backend', 'core', 'lbl', 'None', 'geen', '2010-06-16 13:47:04'),
(1, 'nl', 'backend', 'core', 'lbl', 'ConfirmPassword', 'bevestig wachtwoord', '2010-06-16 13:50:51'),
(1, 'nl', 'backend', 'core', 'lbl', 'PersonalInformation', 'persoonlijke gegevens', '2010-06-16 13:53:40'),
(1, 'nl', 'backend', 'core', 'lbl', 'Surname', 'achternaam', '2010-06-16 13:53:59'),
(1, 'nl', 'backend', 'core', 'lbl', 'Weak', 'zwak', '2010-06-16 13:54:28'),
(1, 'nl', 'backend', 'core', 'lbl', 'Strong', 'sterk', '2010-06-16 13:56:01'),
(1, 'nl', 'backend', 'core', 'lbl', 'OK', 'OK', '2010-06-16 13:59:27'),
(1, 'nl', 'backend', 'core', 'msg', 'HelpNickname', 'De naam waaronder je wilt publiceren (bijvoorbeeld als auteur van een blogartikel).', '2010-06-30 13:51:10'),
(1, 'nl', 'backend', 'core', 'msg', 'HelpAvatar', 'Een vierkante foto van je gezicht geeft het beste resultaat.', '2010-06-30 13:35:39'),
(1, 'nl', 'backend', 'core', 'lbl', 'Avatar', 'avatar', '2010-06-16 14:02:05'),
(1, 'nl', 'backend', 'core', 'lbl', 'InterfacePreferences', 'voorkeuren interface', '2010-06-30 13:54:00'),
(1, 'nl', 'backend', 'core', 'lbl', 'DateFormat', 'formaat datums', '2010-06-30 13:53:03'),
(1, 'nl', 'backend', 'core', 'lbl', 'TimeFormat', 'formaat tijd', '2010-06-30 13:53:22'),
(1, 'nl', 'backend', 'core', 'err', 'NameIsRequired', 'Gelieve een naam in te geven.', '2010-06-16 14:05:11'),
(1, 'nl', 'backend', 'core', 'err', 'SurnameIsRequired', 'Gelieve een achternaam in te geven.', '2010-06-16 14:05:36'),
(1, 'nl', 'backend', 'core', 'err', 'EmailIsInvalid', 'Gelieve een geldig emailadres in te geven.', '2010-06-16 14:06:11'),
(1, 'nl', 'backend', 'core', 'err', 'NicknameIsRequired', 'Gelieve een publicatienaam in te geven.', '2010-06-30 13:51:33'),
(1, 'nl', 'backend', 'core', 'err', 'AlphaNumericCharactersOnly', 'Enkel alfanumerieke karakters zijn toegestaan.', '2010-06-16 14:10:18'),
(1, 'nl', 'backend', 'core', 'err', 'EmailAlreadyExists', 'Dit e-mailadres is al in gebruik.', '2010-07-08 14:00:27'),
(1, 'nl', 'backend', 'core', 'lbl', 'Interface', 'interface', '2010-07-08 14:01:09'),
(1, 'nl', 'backend', 'core', 'err', 'ValuesDontMatch', 'De waarden komen niet overeen.', '2010-06-16 14:24:15'),
(1, 'nl', 'backend', 'core', 'err', 'JPGAndGIFOnly', 'Enkel jpg en gif bestanden zijn toegelaten.', '2010-06-16 14:47:08'),
(1, 'nl', 'backend', 'core', 'lbl', 'AccountManagement', 'account beheer', '2010-07-09 08:09:07'),
(1, 'nl', 'backend', 'core', 'lbl', 'Group', 'groep', '2010-06-16 14:49:22'),
(1, 'nl', 'backend', 'core', 'lbl', 'ChangePassword', 'wijzig wachtwoord', '2010-06-17 09:53:16'),
(1, 'nl', 'backend', 'core', 'lbl', 'Author', 'auteur', '2010-06-17 11:45:14'),
(1, 'nl', 'backend', 'core', 'lbl', 'Comments', 'reacties', '2010-06-17 11:45:36'),
(1, 'nl', 'backend', 'core', 'lbl', 'Categories', 'categorieën', '2010-06-17 11:45:47'),
(1, 'nl', 'backend', 'core', 'lbl', 'Active', 'actief', '2010-06-17 11:49:58'),
(1, 'nl', 'backend', 'core', 'lbl', 'Status', 'status', '2010-06-17 11:50:05'),
(1, 'nl', 'backend', 'core', 'lbl', 'SEO', 'SEO', '2010-06-17 11:50:20'),
(1, 'nl', 'backend', 'core', 'lbl', 'Cancel', 'annuleer', '2010-06-17 11:53:07'),
(1, 'nl', 'backend', 'core', 'err', 'NonExisting', 'Dit item bestaat niet.', '2010-06-17 12:11:51'),
(1, 'nl', 'backend', 'core', 'lbl', 'Amount', 'aantal', '2010-06-17 12:39:15'),
(1, 'nl', 'backend', 'core', 'lbl', 'SortAscending', 'sorteer oplopend', '2010-06-17 13:02:42'),
(1, 'nl', 'backend', 'core', 'lbl', 'SortDescending', 'sorteer aflopend', '2010-06-17 13:02:55'),
(1, 'nl', 'backend', 'core', 'lbl', 'SortedAscending', 'oplopend gesorteerd', '2010-06-17 13:03:04'),
(1, 'nl', 'backend', 'core', 'lbl', 'SortedDescending', 'aflopend gesorteerd', '2010-06-17 13:03:11'),
(1, 'nl', 'backend', 'core', 'err', 'DebugModeIsActive', 'Debug-mode is nog actief.', '2010-06-18 13:03:34'),
(1, 'nl', 'backend', 'core', 'err', 'RobotsFileIsNotOK', 'robots.txt is niet correct.', '2010-06-18 13:04:34'),
(1, 'nl', 'backend', 'core', 'lbl', 'WebsiteTitle', 'titel website', '2010-06-23 15:53:18'),
(1, 'nl', 'backend', 'core', 'lbl', 'WebmasterEmail', 'e-mailadres webmaster', '2010-06-23 15:53:41'),
(1, 'nl', 'backend', 'core', 'lbl', 'Languages', 'talen', '2010-06-18 13:08:55'),
(1, 'nl', 'backend', 'core', 'lbl', 'Default', 'standaard', '2010-06-18 13:10:07'),
(1, 'nl', 'backend', 'core', 'lbl', 'Scripts', 'scripts', '2010-06-18 13:12:23'),
(1, 'nl', 'backend', 'core', 'lbl', 'Themes', 'thema''s', '2010-06-18 13:12:33'),
(1, 'nl', 'backend', 'core', 'lbl', 'NoTheme', 'geen thema', '2010-06-18 13:15:49'),
(1, 'nl', 'backend', 'core', 'lbl', 'Domains', 'domeinen', '2010-06-18 13:16:56'),
(1, 'nl', 'backend', 'core', 'lbl', 'Analyse', 'analyse', '2010-06-19 05:56:05'),
(1, 'nl', 'backend', 'core', 'lbl', 'APIKeys', 'API keys', '2010-06-19 06:02:49'),
(1, 'nl', 'backend', 'core', 'lbl', 'APIKey', 'API key', '2010-06-19 06:02:56'),
(1, 'nl', 'backend', 'core', 'lbl', 'APIURL', 'API URL', '2010-06-19 06:03:25'),
(1, 'nl', 'backend', 'core', 'lbl', 'GeneralSettings', 'algemene instellingen', '2010-06-19 06:24:38'),
(1, 'nl', 'backend', 'core', 'err', 'InvalidAPIKey', 'Ongeldige API key.', '2010-06-19 06:28:06'),
(1, 'nl', 'backend', 'core', 'msg', 'Saved', 'De wijzigingen werden opgeslagen.', '2010-06-19 06:29:05'),
(1, 'nl', 'backend', 'core', 'err', 'InvalidDomain', 'Ongeldig domein.', '2010-06-19 06:30:02'),
(1, 'nl', 'backend', 'core', 'err', 'ModuleNotAllowed', 'Je hebt onvoldoende rechten voor deze module.', '2010-06-21 09:05:24'),
(1, 'nl', 'backend', 'core', 'err', 'ActionNotAllowed', 'Je hebt onvoldoende rechten voor deze actie.', '2010-06-21 09:06:39'),
(1, 'nl', 'backend', 'core', 'msg', 'PasswordResetSuccess', 'Je wachtwoord werd gewijzigd.', '2010-06-21 09:16:04'),
(1, 'nl', 'backend', 'core', 'err', 'InvalidEmailPasswordCombination', 'De combinatie van e-mail en wachtwoord is niet correct. <a href="#" rel="forgotPasswordHolder" class="toggleBalloon">Bent u uw wachtwoord vergeten?</a>', '2010-07-08 13:59:43'),
(1, 'nl', 'backend', 'core', 'err', 'EmailIsUnknown', 'Dit e-mailadres zit niet in onze database.', '2010-06-21 09:31:49'),
(1, 'nl', 'backend', 'core', 'msg', 'LoginFormForgotPasswordSuccess', '<strong>Mail sent.</strong> Please check your inbox!', '2010-06-21 09:33:32'),
(1, 'nl', 'backend', 'core', 'lbl', 'ResetYourPassword', 'reset je wachtwoord', '2010-06-21 09:34:46'),
(1, 'nl', 'backend', 'core', 'lbl', 'Dear', 'beste', '2010-06-21 09:35:18'),
(1, 'nl', 'backend', 'core', 'msg', 'ResetYourPasswordMailContent', 'Reset je wachtwoord door op de link hieronder te klikken. Indien je niet hier niet om gevraagd hebt hoef je geen actie te ondernemen.', '2010-06-21 09:36:02'),
(1, 'nl', 'backend', 'core', 'msg', 'ResetYourPasswordMailSubject', 'Wijzig je wachtwoord', '2010-06-21 09:36:20'),
(1, 'nl', 'backend', 'core', 'lbl', 'NewPassword', 'nieuw wachtwoord', '2010-06-21 09:51:03'),
(1, 'nl', 'backend', 'core', 'lbl', 'RepeatPassword', 'herhaal wachtwoord', '2010-06-21 09:51:12'),
(1, 'nl', 'backend', 'core', 'msg', 'HelpResetPassword', 'Vul je gewenste, nieuwe wachtwoord in.', '2010-06-21 11:35:04'),
(1, 'nl', 'backend', 'core', 'lbl', 'ResetAndSignIn', 'resetten en aanmelden', '2010-06-21 11:38:06'),
(1, 'nl', 'backend', 'core', 'err', 'PasswordRepeatIsRequired', 'Gelieve het gewenste wachtwoord te herhalen.', '2010-06-21 11:41:34'),
(1, 'nl', 'backend', 'core', 'err', 'PasswordsDontMatch', 'De wachtwoorden zijn verschillend, probeer het opnieuw.', '2010-06-21 11:43:05'),
(1, 'nl', 'backend', 'core', 'lbl', 'Articles', 'artikels', '2010-06-21 12:50:02'),
(1, 'nl', 'backend', 'core', 'lbl', 'MainContent', 'hoofdinhoud', '2010-06-21 12:56:58'),
(1, 'nl', 'backend', 'core', 'lbl', 'Summary', 'samenvatting', '2010-06-21 12:57:17'),
(1, 'nl', 'backend', 'core', 'lbl', 'Category', 'categorie', '2010-06-21 13:11:02'),
(1, 'nl', 'backend', 'core', 'lbl', 'Content', 'inhoud', '2010-06-21 13:41:38'),
(1, 'nl', 'backend', 'core', 'lbl', 'AllowComments', 'reacties toestaan', '2010-06-21 13:46:14'),
(1, 'nl', 'backend', 'core', 'lbl', 'SaveDraft', 'kladversie opslaan', '2010-06-21 13:48:39'),
(1, 'nl', 'backend', 'core', 'lbl', 'Publish', 'publiceer', '2010-06-21 13:49:04'),
(1, 'nl', 'backend', 'core', 'lbl', 'PublishOn', 'publiceer op', '2010-06-21 13:49:48'),
(1, 'nl', 'backend', 'core', 'lbl', 'Published', 'gepubliceerd', '2010-06-21 13:50:24'),
(1, 'nl', 'backend', 'core', 'lbl', 'At', 'om', '2010-06-21 13:50:32'),
(1, 'nl', 'backend', 'core', 'lbl', 'Hidden', 'verborgen', '2010-06-21 13:51:02'),
(1, 'nl', 'backend', 'core', 'msg', 'NoTags', 'Je hebt nog geen tags ingegeven.', '2010-06-21 13:51:33'),
(1, 'nl', 'backend', 'core', 'err', 'TitleIsRequired', 'Geef een titel in.', '2010-06-30 12:17:54'),
(1, 'nl', 'backend', 'core', 'lbl', 'MetaInformation', 'meta-informatie', '2010-06-21 14:38:15'),
(1, 'nl', 'backend', 'core', 'lbl', 'View', 'bekijken', '2010-06-30 12:11:06'),
(1, 'nl', 'backend', 'core', 'lbl', 'LastSaved', 'laatst opgeslagen', '2010-06-30 12:08:59'),
(1, 'nl', 'backend', 'core', 'msg', 'HelpMetaCustom', 'Voeg extra, op maat gemaakte metatags toe.', '2010-06-23 15:07:58'),
(1, 'nl', 'backend', 'core', 'msg', 'HelpMetaDescription', 'Vat de inhoud kort samen. Deze samenvatting wordt getoond in de resultaten van zoekmachines.', '2010-06-23 15:10:57'),
(1, 'nl', 'backend', 'core', 'msg', 'HelpMetaKeywords', 'Kies een aantal goed gekozen termen die de inhoud omschrijven.', '2010-06-23 15:09:12'),
(1, 'nl', 'backend', 'core', 'msg', 'HelpMetaURL', 'Vervang de automatisch gegenereerde URL door een zelfgekozen URL.', '2010-06-21 14:44:27'),
(1, 'nl', 'backend', 'core', 'lbl', 'URL', 'URL', '2010-06-21 14:44:57'),
(1, 'nl', 'backend', 'core', 'lbl', 'CustomURL', 'aangepaste URL', '2010-06-21 14:45:17'),
(1, 'nl', 'backend', 'core', 'err', 'DateIsInvalid', 'Ongeldige datum.', '2010-06-22 08:01:32'),
(1, 'nl', 'backend', 'core', 'err', 'TimeIsInvalid', 'Ongeldige tijd.', '2010-06-22 08:01:43'),
(1, 'nl', 'backend', 'core', 'lbl', 'PublishedOn', 'gepubliceerd op', '2010-06-22 08:19:23'),
(1, 'nl', 'backend', 'core', 'lbl', 'PublishedArticles', 'gepubliceerde artikels', '2010-06-22 08:40:20'),
(1, 'nl', 'backend', 'core', 'lbl', 'Drafts', 'kladversies', '2010-06-22 08:42:34'),
(1, 'nl', 'backend', 'core', 'lbl', 'EditedOn', 'bewerkt op', '2010-06-22 08:43:02'),
(1, 'nl', 'backend', 'core', 'lbl', 'RecentlyEdited', 'recent bewerkt', '2010-06-22 08:44:56'),
(1, 'nl', 'backend', 'core', 'err', 'NoSelection', 'Er waren geen items geselecteerd.', '2010-06-23 15:45:08'),
(1, 'nl', 'backend', 'core', 'lbl', 'PreviousVersions', 'vorige versies', '2010-06-24 14:54:05'),
(1, 'nl', 'backend', 'core', 'msg', 'ConfirmDelete', 'Ben je zeker dat je het item "%1$s" wil verwijderen?', '2010-06-22 08:57:39'),
(1, 'nl', 'backend', 'core', 'msg', 'HelpRevisions', 'De laatst opgeslagen versies worden hier bijgehouden. De huidige versie wordt pas overschreven als je opslaat.', '2010-06-23 15:15:58'),
(1, 'nl', 'backend', 'core', 'lbl', 'UseThisVersion', 'laad deze versie', '2010-06-23 15:19:42'),
(1, 'nl', 'backend', 'core', 'lbl', 'LastEditedOn', 'laatst bewerkt op', '2010-06-22 09:13:52'),
(1, 'nl', 'backend', 'core', 'msg', 'UsingARevision', 'Je hebt een oudere versie geladen.', '2010-06-23 15:25:44'),
(1, 'nl', 'backend', 'core', 'lbl', 'Archived', 'gearchiveerd', '2010-06-22 09:28:17'),
(1, 'nl', 'backend', 'core', 'msg', 'UsingADraft', 'Je gebruikt een kladversie.', '2010-06-22 11:19:50'),
(1, 'nl', 'backend', 'core', 'msg', 'HelpDrafts', 'Hier kan je jouw kladversie zien. Dit zijn tijdelijke versies.', '2010-06-22 11:23:23'),
(1, 'nl', 'backend', 'core', 'lbl', 'UseThisDraft', 'gebruik deze kladversie', '2010-06-22 11:32:04'),
(1, 'nl', 'backend', 'core', 'lbl', 'Preview', 'preview', '2010-06-22 11:33:25'),
(1, 'nl', 'backend', 'core', 'lbl', 'Previous', 'vorige', '2010-06-22 11:33:35'),
(1, 'nl', 'backend', 'core', 'lbl', 'Next', 'volgende', '2010-06-22 11:33:55'),
(1, 'nl', 'backend', 'core', 'lbl', 'PreviousPage', 'vorige pagina', '2010-06-22 11:34:15'),
(1, 'nl', 'backend', 'core', 'lbl', 'NextPage', 'volgende pagina', '2010-06-22 11:35:11'),
(1, 'nl', 'backend', 'core', 'lbl', 'Draft', 'kladversie', '2010-06-22 11:41:50'),
(1, 'nl', 'backend', 'core', 'msg', 'NoRevisions', 'Er zijn nog geen vorige versies.', '2010-06-23 15:27:27'),
(1, 'nl', 'backend', 'core', 'msg', 'SavedAsDraft', '"%1$s" als kladversie opgeslagen.', '2010-06-22 12:49:34'),
(1, 'nl', 'backend', 'core', 'lbl', 'AddCategory', 'categorie toevoegen', '2010-06-22 13:04:45'),
(1, 'nl', 'backend', 'core', 'msg', 'AddedCategory', 'De categorie "%1$s" werd toegevoegd.', '2010-06-30 13:49:36'),
(1, 'nl', 'backend', 'core', 'msg', 'EditCategory', 'bewerk categorie "%1$s"', '2010-06-22 13:32:59'),
(1, 'nl', 'backend', 'core', 'msg', 'ConfirmDeleteCategory', 'Ben je zeker dat je deze categorie "%1$s" wil verwijderen.', '2010-06-22 13:37:07'),
(1, 'nl', 'backend', 'core', 'msg', 'EditedCategory', 'De categorie "%1$s" werd opgeslagen.', '2010-06-23 14:04:07'),
(1, 'nl', 'backend', 'core', 'msg', 'DeletedCategory', 'De categorie "%1$s" werd verwijderd.', '2010-06-22 13:39:24'),
(1, 'nl', 'backend', 'core', 'msg', 'NoComments', 'Er zijn geen reacties in deze categorie.', '2010-06-23 15:41:46'),
(1, 'nl', 'backend', 'core', 'lbl', 'Keywords', 'sleutelwoorden', '2010-06-24 14:58:32'),
(1, 'nl', 'backend', 'core', 'lbl', 'WaitingForModeration', 'wachten op moderatie', '2010-06-22 13:49:53'),
(1, 'nl', 'backend', 'core', 'lbl', 'Spam', 'spam', '2010-06-22 13:50:01'),
(1, 'nl', 'backend', 'core', 'lbl', 'Date', 'datum', '2010-06-22 13:51:29'),
(1, 'nl', 'backend', 'core', 'lbl', 'Comment', 'reactie', '2010-06-22 13:51:40'),
(1, 'nl', 'backend', 'core', 'lbl', 'MoveToPublished', 'verplaats naar gepubliceerd', '2010-06-22 13:57:04'),
(1, 'nl', 'backend', 'core', 'lbl', 'MoveToModeration', 'verplaats naar moderatie', '2010-06-22 13:57:23'),
(1, 'nl', 'backend', 'core', 'lbl', 'MoveToSpam', 'verplaats naar spam', '2010-06-22 13:57:34'),
(1, 'nl', 'backend', 'core', 'err', 'NoCommentsSelected', 'Er waren geen reacties geselecteerd.', '2010-06-23 15:42:12'),
(1, 'nl', 'backend', 'core', 'msg', 'CommentMovedPublished', 'De reactie werd gepubliceerd.', '2010-06-22 14:24:46'),
(1, 'nl', 'backend', 'core', 'msg', 'CommentsMovedPublished', 'De reacties werden gepubliceerd.', '2010-06-22 14:26:23'),
(1, 'nl', 'backend', 'core', 'msg', 'CommentMovedSpam', 'De reactie werd gemarkeerd als spam.', '2010-06-22 14:24:58'),
(1, 'nl', 'backend', 'core', 'msg', 'CommentsMovedSpam', 'De reacties werden gemarkeerd als spam.', '2010-06-22 14:26:50'),
(1, 'nl', 'backend', 'core', 'msg', 'CommentMovedModeration', 'De reactie werd verplaatst naar moderatie.', '2010-06-22 14:24:38'),
(1, 'nl', 'backend', 'core', 'msg', 'CommentsMovedModeration', 'De reacties werden verplaatst naar moderatie.', '2010-06-22 14:26:03'),
(1, 'nl', 'backend', 'core', 'msg', 'CommentDeleted', 'De reactie werd verwijderd.', '2010-06-22 14:24:27'),
(1, 'nl', 'backend', 'core', 'msg', 'CommentsDeleted', 'De reacties werden verwijderd.', '2010-06-22 14:25:09'),
(1, 'nl', 'backend', 'core', 'lbl', 'ModuleSettings', 'module-instellingen', '2010-06-22 14:31:29'),
(1, 'nl', 'backend', 'core', 'lbl', 'SpamFilter', 'spamfilter', '2010-06-22 14:32:13'),
(1, 'nl', 'backend', 'core', 'lbl', 'Moderation', 'moderatie', '2010-06-22 14:32:40'),
(1, 'nl', 'backend', 'core', 'msg', 'HelpRSSTitle', 'Geef een duidelijke titel aan de RSS-feed', '2010-06-22 14:34:38'),
(1, 'nl', 'backend', 'core', 'msg', 'HelpRSSDescription', 'Beschrijf bondig wat voor soort inhoud de RSS-feed zal bevatten.', '2010-06-22 14:35:07'),
(1, 'nl', 'backend', 'core', 'lbl', 'Description', 'beschrijving', '2010-06-22 14:35:35'),
(1, 'nl', 'backend', 'core', 'lbl', 'FeedburnerURL', 'feedburner URL', '2010-06-22 14:36:02'),
(1, 'nl', 'backend', 'core', 'msg', 'HelpFeedburnerURL', 'bijv. http://feeds.feedburner.com/jouw-website', '2010-06-22 14:36:26'),
(1, 'nl', 'backend', 'core', 'lbl', 'EnableModeration', 'moderatie inschakelen', '2010-06-22 14:37:09'),
(1, 'nl', 'backend', 'core', 'lbl', 'PingBlogServices', 'ping blogservices', '2010-06-22 14:37:36'),
(1, 'nl', 'backend', 'core', 'lbl', 'FilterCommentsForSpam', 'filter reacties op spam', '2010-06-22 14:38:20'),
(1, 'nl', 'backend', 'core', 'lbl', 'RSSFeed', 'RSS feed', '2010-06-22 14:38:40'),
(1, 'nl', 'backend', 'core', 'lbl', 'RequiredField', 'verplicht veld', '2010-06-22 14:39:01'),
(1, 'nl', 'backend', 'core', 'err', 'InvalidURL', 'Ongeldige URL.', '2010-06-22 14:58:42'),
(1, 'nl', 'backend', 'core', 'lbl', 'LatestComments', 'laatste reacties', '2010-06-23 11:40:46'),
(1, 'nl', 'backend', 'core', 'msg', 'CommentsToModerate', '%1$s reactie(s) te modereren.', '2010-06-23 11:42:03'),
(1, 'nl', 'backend', 'core', 'lbl', 'Moderate', 'modereer', '2010-06-23 11:42:17'),
(1, 'nl', 'backend', 'core', 'msg', 'NoPublishedComments', 'Er zijn geen gepubliceerde reacties.', '2010-06-23 15:42:43'),
(1, 'nl', 'backend', 'core', 'lbl', 'AllComments', 'alle reacties', '2010-06-23 11:48:14'),
(1, 'nl', 'backend', 'core', 'lbl', 'By', 'door', '2010-06-30 12:06:09'),
(1, 'nl', 'backend', 'core', 'lbl', 'Page', 'pagina', '2010-06-23 11:54:33'),
(1, 'nl', 'backend', 'core', 'lbl', 'Home', 'home', '2010-06-23 11:59:50'),
(1, 'nl', 'backend', 'core', 'lbl', 'VisibleOnSite', 'Zichtbaar op de website', '2010-06-24 13:54:51'),
(1, 'nl', 'backend', 'core', 'lbl', 'Template', 'template', '2010-06-25 09:25:49'),
(1, 'nl', 'backend', 'core', 'msg', 'ConfirmMassDelete', 'Ben je zeker dat je deze item(s) wil verwijderen?', '2010-06-24 13:15:08'),
(1, 'nl', 'backend', 'core', 'msg', 'ConfirmMassSpam', 'Ben je zeker dat je deze item(s) wil markeren als spam?', '2010-06-24 13:14:51'),
(1, 'nl', 'backend', 'core', 'lbl', 'ReferenceCode', 'referentiecode', '2010-06-24 14:15:06'),
(1, 'nl', 'backend', 'core', 'lbl', 'Translation', 'vertaling', '2010-06-24 14:15:25'),
(1, 'nl', 'backend', 'core', 'lbl', 'ExtraMetaTags', 'extra metatags', '2010-06-24 15:00:07'),
(1, 'nl', 'backend', 'core', 'lbl', 'Titles', 'titels', '2010-06-25 11:15:57'),
(1, 'nl', 'backend', 'core', 'lbl', 'PageTitle', 'paginatitel', '2010-06-25 11:17:57'),
(1, 'nl', 'backend', 'core', 'lbl', 'NavigationTitle', 'navigatietitel', '2010-06-30 12:18:48'),
(1, 'nl', 'backend', 'core', 'msg', 'ActivateNoFollow', 'Activeer <code>rel="nofollow"</code>', '2010-06-30 09:43:35'),
(1, 'nl', 'backend', 'core', 'lbl', 'ChooseATemplate', 'kies een template', '2010-06-25 11:27:09'),
(1, 'nl', 'backend', 'core', 'lbl', 'EditTemplate', 'template wijzigen', '2010-06-30 12:20:11'),
(1, 'nl', 'backend', 'core', 'lbl', 'Editor', 'editor', '2010-06-25 11:51:34'),
(1, 'nl', 'backend', 'core', 'lbl', 'ChooseContent', 'kies inhoud', '2010-06-25 13:39:58'),
(1, 'nl', 'backend', 'core', 'lbl', 'Widget', 'widget', '2010-06-25 13:48:49'),
(1, 'nl', 'backend', 'core', 'lbl', 'WhichModule', 'welke module', '2010-06-25 13:50:07'),
(1, 'nl', 'backend', 'core', 'lbl', 'WhichWidget', 'welke widget', '2010-06-25 13:51:42'),
(1, 'nl', 'backend', 'core', 'lbl', 'RecentComments', 'recente reacties', '2010-06-25 13:52:18'),
(1, 'nl', 'backend', 'core', 'lbl', 'RecentArticles', 'recente artikels', '2010-06-25 13:52:25'),
(1, 'nl', 'backend', 'core', 'lbl', 'Block', 'blok', '2010-06-28 09:49:11'),
(1, 'nl', 'backend', 'core', 'lbl', 'ContactForm', 'contactformulier', '2010-06-28 09:59:19'),
(1, 'nl', 'backend', 'core', 'lbl', 'UsedIn', 'gebruikt in', '2010-06-29 13:00:36'),
(1, 'nl', 'backend', 'core', 'msg', 'NoUsage', 'Nog niet gebruikt.', '2010-06-29 13:01:23'),
(1, 'nl', 'backend', 'core', 'lbl', 'AddTemplate', 'template toevoegen', '2010-06-29 14:28:56'),
(1, 'nl', 'backend', 'core', 'lbl', 'Filename', 'bestandsnaam', '2010-06-29 14:37:16'),
(1, 'nl', 'backend', 'core', 'lbl', 'Label', 'label', '2010-06-29 14:38:39'),
(1, 'nl', 'backend', 'core', 'lbl', 'NumberOfBlocks', 'aantal blokken', '2010-06-29 14:39:10'),
(1, 'nl', 'backend', 'core', 'lbl', 'Layout', 'layout', '2010-06-29 14:39:56'),
(1, 'nl', 'backend', 'core', 'lbl', 'Pagination', 'paginering', '2010-06-30 09:18:38'),
(1, 'nl', 'backend', 'core', 'lbl', 'ItemsPerPage', 'items per pagina', '2010-06-30 09:18:55'),
(1, 'nl', 'backend', 'core', 'lbl', 'MetaNavigation', 'metanavigatie', '2010-06-30 14:26:21'),
(1, 'nl', 'backend', 'core', 'err', 'NoModuleLinked', 'Er is nog geen module gekoppeld.', '2010-06-30 11:26:19'),
(1, 'nl', 'backend', 'core', 'lbl', 'DeleteThisTag', 'verwijder deze tag', '2010-06-30 12:55:03'),
(1, 'nl', 'backend', 'core', 'lbl', 'BrowserNotSupported', 'browser niet ondersteund', '2010-06-30 12:55:52'),
(1, 'nl', 'backend', 'core', 'err', 'BrowserNotSupported', '<p>Je gebruikt een verouderde browser die niet ondersteund wordt door Fork CMS. Gebruik een van de volgende goeie alternatieven:</p><ul><li><a href="http://www.microsoft.com/windows/products/winfamily/ie/default.mspx">Internet Explorer *</a>: update naar de nieuwe versie van Internet Explorer.</li><li><a href="http://www.firefox.com/">Firefox</a>: een zeer goeie browser met veel gratis extensies.</li><li><a href="http://www.opera.com/">Opera:</a> Snel en met vele functionaliteiten.</li></ul>', '2010-06-30 15:42:17'),
(1, 'nl', 'backend', 'core', 'lbl', 'Frontend', 'frontend', '2010-06-30 13:12:44'),
(1, 'nl', 'backend', 'core', 'lbl', 'Backend', 'backend', '2010-06-30 13:13:00'),
(1, 'nl', 'backend', 'core', 'err', 'AddingCategoryFailed', 'Er ging iets mis.', '2010-06-30 13:23:52'),
(1, 'nl', 'backend', 'core', 'err', 'CookiesNotEnabled', 'Om Fork CMS te gebruiken moet cookies geactiveerd zijn in uw browser. Activeer cookies en vernieuw deze pagina.', '2010-06-30 13:24:35'),
(1, 'nl', 'backend', 'core', 'err', 'JavascriptNotEnabled', 'Om Fork CMS te gebruiken moet Javascript geactiveerd zijn in uw browser. Activeer javascript en vernieuw deze pagina.', '2010-06-30 13:26:32'),
(1, 'nl', 'backend', 'core', 'err', 'AkismetKey', 'Akismet API-key werd nog niet geconfigureerd.', '2010-06-30 13:29:56'),
(1, 'nl', 'backend', 'core', 'lbl', 'Back', 'terug', '2010-06-30 13:33:18'),
(1, 'nl', 'backend', 'core', 'err', 'ForkAPIKeys', 'Fork API-keys nog niet geconfigureerd.', '2010-06-30 13:59:26'),
(1, 'nl', 'backend', 'core', 'err', 'GoogleMapsKey', 'Google maps API-key werd nog niet geconfigureerd.', '2010-06-30 14:03:30'),
(1, 'nl', 'backend', 'core', 'lbl', 'Loading', 'loading', '2010-06-30 14:10:58'),
(1, 'nl', 'backend', 'core', 'err', 'SomethingWentWrong', 'Er liep iets fout.', '2010-06-30 14:12:10'),
(1, 'nl', 'backend', 'core', 'err', 'URLAlreadyExists', 'Deze URL bestaat reeds.', '2010-06-30 14:12:53'),
(1, 'nl', 'backend', 'core', 'err', 'SettingsForkAPIKeys', 'De Fork API-keys zijn niet goed geconfigureerd.', '2010-06-30 14:19:06'),
(1, 'nl', 'backend', 'core', 'err', 'RSSTitle', 'Blog RSS titel is nog niet ingevuld. <a href="%1$s">Configureer</a>', '2010-07-01 13:56:20'),
(1, 'nl', 'backend', 'core', 'lbl', 'VisitWebsite', 'bezoek website', '2010-07-05 08:19:01'),
(1, 'nl', 'backend', 'core', 'lbl', 'Meta', 'meta', '2010-07-05 11:51:29'),
(1, 'nl', 'backend', 'core', 'lbl', 'File', 'bestand', '2010-07-05 13:48:04'),
(1, 'nl', 'backend', 'core', 'lbl', 'From', 'van', '2010-07-05 13:48:44'),
(1, 'nl', 'backend', 'core', 'lbl', 'GoToPage', 'ga naar pagina', '2010-07-05 13:48:52'),
(1, 'nl', 'backend', 'core', 'lbl', 'Import', 'importeer', '2010-07-05 13:50:13'),
(1, 'nl', 'backend', 'core', 'lbl', 'Port', 'poort', '2010-07-05 13:50:32'),
(1, 'nl', 'backend', 'core', 'lbl', 'Server', 'server', '2010-07-05 13:50:45'),
(1, 'nl', 'backend', 'core', 'msg', 'HelpBlogger', 'Selecteer het bestand dat u heeft geëxporteerd van <a href="http://blogger.com">Blogger</a>.', '2010-07-05 13:52:17'),
(1, 'nl', 'backend', 'core', 'lbl', 'SMTP', 'SMTP', '2010-07-05 13:53:50'),
(1, 'nl', 'backend', 'core', 'err', 'XMLFilesOnly', 'Enkel xml bestanden zijn toegelaten.', '2010-07-05 13:55:18'),
(1, 'nl', 'backend', 'core', 'lbl', 'ReplyTo', 'reply-to', '2010-07-05 13:55:24'),
(1, 'nl', 'backend', 'core', 'lbl', 'To', 'aan', '2010-07-05 13:55:28'),
(1, 'nl', 'backend', 'core', 'msg', 'HelpEmailFrom', 'E-mails verzonden vanuit het CMS gebruiken deze instellingen.', '2010-07-05 14:00:59'),
(1, 'nl', 'backend', 'core', 'msg', 'HelpEmailTo', 'Notificaties van het CMS worden hiernaar verstuurd.', '2010-07-05 14:03:33'),
(1, 'nl', 'backend', 'core', 'msg', 'HelpSMTPServer', 'Mailserver die wordt gebruikt voor het versturen van e-mails.', '2010-07-05 14:07:24'),
(1, 'nl', 'backend', 'core', 'lbl', 'Archive', 'archief', '2010-07-05 14:47:03'),
(1, 'nl', 'backend', 'core', 'lbl', 'DateAndTime', 'Datum en tijd', '2010-07-06 07:28:45'),
(1, 'nl', 'backend', 'core', 'lbl', 'ShortDateFormat', 'korte datumformaat', '2010-07-06 07:45:50'),
(1, 'nl', 'backend', 'core', 'lbl', 'LongDateFormat', 'lange datumformaat', '2010-07-06 07:46:01'),
(1, 'nl', 'backend', 'core', 'lbl', 'Username', 'gebruikersnaam', '2010-07-08 14:02:22'),
(1, 'nl', 'backend', 'core', 'msg', 'ClickToEdit', 'Klik om te wijzigen.', '2010-07-09 08:09:24');