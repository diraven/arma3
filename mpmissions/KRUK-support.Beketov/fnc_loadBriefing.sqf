// Prepare records.
private _briefing = [
	["diary", "Брифінг", [
		["Ситуація", "
			Українська авіація допомагає союзній державі відбивати русняву навалу.
		"],
		["Ворожі сили", "
			Штурмові підрозділи:<br/>
			* Піхотні.<br/>
			* Моторизовані.<br/>
			* Механізовані.<br/>
			* Танкові.<br/>
			<br/>
			Артилерія:<br/>
			* Д-30.<br/>
			<br/>
			ППО:<br/>
			* Крупнокаліберні кулемети.<br/>
			* ПЗРК.<br/>
			* ЗСУ-23-4.<br/>
			<br/>
			Авіація:<br/>
			* Винищувач Міг29.<br/>
		"],
		["Союзні сили", "
			Штурмові підрозділи:<br/>
			* Піхотні.<br/>
			* Моторизовані.<br/>
			* Механізовані.<br/>
			* Танкові.<br/>
			<br/>
			Артилерія:<br/>
			* Відсутня.<br/>
			<br/>
			ППО:<br/>
			* Крупнокаліберні кулемети.<br/>
			* ПЗРК.<br/>
			<br/>
			Авіація:<br/>
			* Транспортні гелікоптери.<br/>
			* Ударні гелікоптери.<br/>
		"]
	]],
	["gameplay", "Ігролад", [
		["Ворожа база", "Відмічена штриховою лінією на карті. Перетинати лінію заборонено."],
		["Екіпаж ШІ", "
			Від екіпажу ШІ можна відмовитися підійшовши до техніки і обравши коліщатком миші 'звільнити машину'.<br/>
			Повернути екіпаж ШІ можна приземлившись на майданчику тех. обслуговування.<br/>
		"]
	]],
	["rules", "ПРАВИЛА", [
		["Головне", "Максимум взаємоповаги, мінімум мату."],
		["Мова спілкування", "Українська."],
		["Порушення", "Порушення правил караються на розсуд адміністрації серверу та адміністрації спільноти Arma Ukraine."]
	]],
	["thanks", "Подяка", [
		["Спільнота Arma Ukraine", "Натхнення, поради, підтримка і всебічна допомога.<br/>discord.gg/DYA3dNS"],
		["ASADA", "Тестування і моральна підтримка. :)"],
		["Brezerk", "Ідеї та скрипти.<br/>https// brezblock.org.ua/"], 
		["ch_yaroslav", "Текстури, ідеї та скрипти."],
		["Fenix", "Ідеї та скрипти."],
		["Killah Potatoes", "Основа місії.<br/>github.com/KillahPotatoes/KP-Support"],
		["Збройним Силам України", "
			Безмежна вдячність захисникам та захисницям.<br/>
			Вічна пам'ять та шана загиблим.<br/>
			Допомагайте рятувати життя: savelife.in.ua<br/>
		"]
	]]
];

// Populate records.
{
	private _subject = _x#0;
	private _records = _x#2;
	reverse _records;
	player createDiarySubject [_subject, _x#1];
	{
		player createDiaryRecord [_subject, [_x#0, _x#1]];
	} forEach (_records);
} forEach _briefing;