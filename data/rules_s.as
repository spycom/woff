package data {
	import flash.display.*;

	import data.text;

	public class rules_s extends Sprite {
		
		public function rules_s():void {
			
			
		var table1:Shape = new Shape();
		table1.graphics.beginFill(0xFFFFFF);
		table1.graphics.lineStyle(1, 0xCCCCCC);
		table1.graphics.drawRoundRect(150, 440, 300, 305, 20);
		table1.graphics.endFill();
		addChild(table1);
		
		var table2:Shape = new Shape();
		table2.graphics.beginFill(0xFFFFFF);
		table2.graphics.lineStyle(1, 0xCCCCCC);
		table2.graphics.drawRoundRect(180, 910, 240, 421, 20);
		table2.graphics.endFill();
		addChild(table2);
		
		var rules_txt2:text = new text(0, 0, "", "rules");
		
		//rules_txt2.x = 25;
		//rules_txt2.y = 120;
		//rules_txt2.scrollRect = new Rectangle(0, 0, 615, 345);
		rules_txt2.setText(rules_txt2.txt() + 
		"	Основые положения.\n" +
		"\n	Игрок получает 100 миллионов евро, чтобы набрать себе команду из 15 футболистов Российской премьер лиги. После каждого тура чемпионата России по футболу, футболисты выбранные игроком получают очки в зависимости от успешности выступления за свои клубы (см. Начисление очков). Каждая команда автоматически участвует в общем зачете (соревнование среди всех игроков), в лиге фанатов любимого клуба и так же может присоединиться к любой из лиг или создать лигу сама." +
		"\n	Набор игроков" +
			"\n	Первым шагом в игре является создание команды из 15 футболистов, в зависимости от их амплуа и клубной принадлежности. Только полностью укомплектованные клубы допускаются к заявке в текущем туре. После комплектации команды, вы сможете определить стартовый состав и резервных футболистов." +
			"\n - 2 Вратаря" +
			"\n - 5 Защитников" +
			"\n - 5 Полузащитников" +
			"\n - 3 Нападающих" +
			"\n	 Не более 3 игроков из одного клуба!!!\n" +
			"\nСтартовый состав и резерв." +
		"\n	После комплектации команды ваш стартовый состав автоматически будет иметь следующую расстановку 4-4-2. Вы можете изменить эту расстановку путем произведения замен. Для проведения замены вам необходимо нажать иконку ˅ рядом с футболистом основного состава и выбрать игрока из резерва, которого хотите внести в основной состав. Изменение расстановки  будет проведено автоматически. Тем не менее в команде всегда должны присутствовать:" +
			"\n1 - Вратарь" +
			"\n3 - Защитника" +
			"\n3 - Полузащитника" +
			"\n1 - Нападающий" +
			"\n	Резервный состав создается на случай не участия какого-либо из игроков вашей команды в текущем туре. Каждый футболист резервного состава имеет свой порядковый номер замены. В случае если замена приводит к нарушению состава команды, то проводится следующая возможная замена. Так например если в стартовом составе всего 3 полузащитника и один из них не участвовал в текущем туре, то он может быть заменен только на полузащитника, даже если резервист стоит третьим по порядку в резервном составе." +
			"\n " +
		"\n\nНачисление очков." +
"\n							    - 				 Вр   	 Защ	 П/з	 Нап	 Joker*" +
"\n									 Командные действия		" +			
"\n						  Команда не пропустила	  3	  3	 1,5	0,5	" +
"\n						  Команда не забила		  -	  -	 -1	-2	" +
"\n						  Разгром соперника" +
"\n						  (разница более 3 голов)		     1		" +		
"\n\n									 Личные действия						" +
"\n						  Полный матч				     2				" +
"\n						  Неполный матч				     1				" +
"\n						  Гол с игры				10	6	5	4	x1.5" +
"\n						  Гол с пенальти				     2			x1.5" +
"\n						  Автогол				-2	-3	-4	-4	x1.5" +
"\n						  Хет-трик				 	    3			x1.5" +
"\n						  Голевой пас			5	3	2	2	x1.5" +
"\n						  Пенальти не забитый			   -3			x1.5" +
"\n						  Пенальти отраженный	4	­	­	­	x1.5" +
"\n						  Удары в створ " +
"\n						  (отраженные)			+0.4	­	­	­	x1.5" +
"\n						  Желтая карточка			   -1			x1.5" +
"\n						  Красная карточка			   -3			x1.5" +
"\n						  Пропущенный гол  		-2	-1	 -0,5" +		
"\n\n" +		
 "\n	- Статистика является субъективной и может быть изменена до начала следующего тура" +
"\n	- Джокером считается игрок вышедший на замену по ходу матча." +
"\n	- Игрок может выбрать капитана своей команды, очки которого будут удвоены." +
"\n\n	Трансферы" +
"\nДо начала сезона всем игрокам позволено производить неограниченное число трансферов. После начала сезона вам выделяется 40 трансферов. По истичении этого количества игрок не сможет проводить новые трансферы. Продажа футболиста осуществляется по его текущей стоимости, которая может отличаться от стоимости покупки как в большую так и в меньшую стороны." + 
"\nВсе трансферы должны быть проведены до момента сохранения заявки на текущий тур! Рассписание времение сохранения заявок для данного сезона:" +
"\n\n								Тур 1" +
"			12.03.2010 12-00" +
"\n								Тур 2" +
"		 	19.03.2010 12-00" +
"\n								Тур 3" +
"			26.03.2010 12-00" +
"\n								Тур 4" +
"			03.04.2010 12-00" +
"\n								Тур 5" +
"			10.04.2010 12-00" +
"\n								Тур 6 " +
"			17.04.2010 12-00" +
"\n								Тур 7" +
"			24.04.2010 12-00" +
"\n								Тур 8" +
"			30.04.2010 12-00" +
"\n								Тур 9" +
"			05.05.2010 12-00" +
"\n								Тур 10" +
"		10.05.2010 12-00" +
"\n								Тур 11" +
"		14.05.2010 12-00" +
"\n								Тур 12" +
"		08.07.2010 12-00" +
"\n								Тур 13" +
"		17.07.2010 12-00" +
"\n								Тур 14" +
"		24.07.2010 12-00" +
"\n								Тур 15" +
"		30.07.2010 12-00" +
"\n								Тур 16" +
"		06.08.2010 12-00" +
"\n								Тур 17" +
"		14.08.2010 12-00" +
"\n								Тур 18" +
"		20.08.2010 12-00" +
"\n								Тур 19" +
"		28.08.2010 12-00" +
"\n								Тур 20" +
"		11.09.2010 12-00" +
"\n								Тур 21" +
"		18.09.2010 12-00" +
"\n								Тур 22" +
"		25.09.2010 12-00" +
"\n								Тур 23" +
"		02.10.2010 12-00" +
"\n								Тур 24" +
"		16.10.2010 12-00" +
"\n								Тур 25" +
"		23.10.2010 12-00" +
"\n								Тур 26" +
"		30.10.2010 12-00" +
"\n								Тур 27" +
"		05.11.2010 12-00" +
"\n								Тур 28" +
"		12.11.2010 12-00" +
"\n								Тур 29" +
"		20.11.2010 12-00" +
"\n								Тур 30" +
"		28.11.2010 12-00" +

"\n\nСтоимость игроков" +
	"\n	Стоимость футболистов меняется в течении сезона в зависимости от их выступлений. " +

"\n\nЛиги" +
	"\n	Игрок может создавать собственные лиги или присоединяться к уже существующим. Автоматически команда игрока будет участвовать в общем рейтинге команд и в лиге фанатов любимого футбольного клуба данного чемпионата." +

"\n\nПереносы матчей" +
	"\n	В случае переноса матча футболистам обоих клубов не начисляется очков, но после проведения перенесенного матча футболистам этих клубов будут начислены очки за этот матч, и сумма будет добавлена к сумме за текущий игровой тур. " +

"\n\nКоличество команд." +
	"\n	Игрок может заявить лишь одну команду." +

"\n\nАмплуа футболистов." +
	"\n	В процессе игры никто из игроков не может поменять амплуа футболистов выбранных в их команды, например полузащитника поставить в нападение и т.п." +
	"\n	В случае если футболист в ходе трансферного окна перешел в другой клуб не из РПЛ игроку необходимо провести с ним трансфер. В противном случае команда не будет заявлена для участия в следующих турах по причине неполного состава." +

"\n\nПлатные услуги" +
	"\n	В игре введена внутренняя валюта MP – manager points. 10 MP  = 1 голосу" +
"\n	Игрок может подписаться на расширенную статистику, содержащую информацию о травмированных, дисквалифицированных и футболистах, чье участие в предстоящем туре находится под сомнением. Так же станет доступен показатель популярности футболиста — процент команд, в которых заявлен данный футболист. Стоимость статистики 4 MP для предстоящего тура и 80 MP подписка на весь сезон." +
"\n	Игрок может один раз за сезон увеличить бюджет команды на 10 млн. евро за 250 MP" +
"\n	Игрок может один раз за сезон приобрести дополнительно 10 трансферов за 250 MP" +
"\n	Игрок может заявить свою команду для участия в платном турнире за 4 MP, призовой фонд которого распределяется следующим образом:" +
	"\n	Первые 1% победителей получают по 100 MP (10 голосов)" +
"\n		Следующие 11% призеров получают по 20 MP (2 голоса)" +

"\n\nСтатус «Эксперта»" +
"\n	Статус «Эксперта» предоставляет игроку право доступа к разделу платной статистики и бесплатное участие в платном турнире. Игрок может добиться статуса «Эксперта» лишь в двух случаях: пятикратное попадание в топ-100 призеров тура, либо попадание в топ-100 призеров турнира.");
		
		
		
		
		
		
		addChild(rules_txt2);
		
			
	}
}
}