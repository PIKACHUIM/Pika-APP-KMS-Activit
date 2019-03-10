/* ------------------------------------
 *     皮卡丘KMS激活工具CLI V3.1.1.1
 *        Copyright 2019 Pikachuim
 *  ------------------------------------ */
#include <stdio.h>
#include <stdlib.h>
#include <windows.h>

void actbat()
{
	int k = system( "chk.bat" );
	if ( k == -1 )
	{
		printf( "\n皮卡丘KMS激活工具V3.1.1.1\n------------------------------------\n" );
		system( "echo 权限不足！！请以管理员权限运行！！！ && echo." );
		exit( -1 );
	}
}


void actadm()
{
	system( "cls && mode con cols=60 lines=23 && color f4 && echo. && echo. && echo." );
	int k = system( "chk.bat" );
	if ( k == -1 )
	{
		system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
		system( "echo      ▇                                            ▇" );
		system( "echo      ▇--------------------------------------------▇" );
		system( "echo      ▇    ！！！！请右键以管理员权限运行！！！！  ▇" );
		system( "echo      ▇        ********按任意键退出********        ▇" );
		system( "echo      ▇--------------------------------------------▇" );
		system( "echo      ▇                                            ▇" );
		system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
		system( "pause" );
		exit( -1 );
	}
}


void actwin()
{
	char t = 0;
	system( "cls && mode con cols=60 lines=23 && color 3f && echo. && echo. && echo." );
	printf( "\n                 皮卡丘KMS激活工具V3.1.1.1\n            ------------------------------------\n\n" );
	system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇--------------------------------------------▇" );
	system( "echo      ▇   ********欢迎使用Windows激活向导********  ▇" );
	system( "echo      ▇              第一步：版本转换              ▇" );
	system( "echo      ▇--------------------------------------------▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇     请在工具打开后选择对应Windows版本      ▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇          再选择【Business-VOL版】          ▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇     最后点击【开始转换】稍等片刻即可       ▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇        提示转换完成后请关闭转换软件        ▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
	system( "choice /t 1 /d y /n >nul" );
	system( "vol.exe" );
	system( "cls && echo. && echo. && echo." );
	printf( "\n                 皮卡丘KMS激活工具V3.1.1.1\n            ------------------------------------\n\n" );
	system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇--------------------------------------------▇" );
	system( "echo      ▇   ********欢迎使用Windows激活向导********  ▇" );
	system( "echo      ▇              第一步：版本转换              ▇" );
	system( "echo      ▇--------------------------------------------▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇               转换成功了吗？               ▇" );
	system( "echo      ▇         转换成功成功请按Y键开始激活        ▇" );
	system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
	printf( "\n     转换成功了吗？转换成功成功请输入Y然后回车（Y/N)：" );
	getchar();
	scanf( "%c", &t );
	printf( "%c", t );
	if ( t == 'Y' || t == 'y' )
	{
		system( "cls && mode con cols=60 lines=23 && color b0 && echo. && echo. && echo." );
		printf( "\n                 皮卡丘KMS激活工具V3.1.1.1\n            ------------------------------------\n\n" );
		system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
		system( "echo      ▇                                            ▇" );
		system( "echo      ▇--------------------------------------------▇" );
		system( "echo      ▇       ********正在激活Windows********      ▇" );
		system( "echo      ▇--------------------------------------------▇" );
		system( "echo      ▇                                            ▇" );
		system( "echo      ▇             正在激活Windows...             ▇" );
		system( "echo      ▇                                            ▇" );
		system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );

		system( "wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /skms skms1.52pika.iego.net" );
		system( "choice /t 1 /d y /n >nul" );
		system( "wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /ato" );
		system( "choice /t 1 /d y /n >nul" );
		system( "wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /skms skms2.52pika.iego.net" );
		system( "choice /t 1 /d y /n >nul" );
		system( "wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /ato" );
		system( "choice /t 1 /d y /n >nul" );
		system( "wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /skms skms3.52pika.iego.net" );
		system( "choice /t 1 /d y /n >nul" );
		system( "wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /ato" );
		system( "choice /t 1 /d y /n >nul" );
		system( "wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /skms skms1.52pika.iego.net" );
		system( "choice /t 1 /d y /n >nul" );
		system( "start slmgr /dli" );
		system( "choice /t 1 /d y /n >nul" );
		system( "start slmgr /xpr" );
		system( "cls && mode con cols=60 lines=23 && color af && echo. && echo. && echo." );
		printf( "\n                 皮卡丘KMS激活工具V3.1.1.1\n            ------------------------------------\n\n" );
		system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
		system( "echo      ▇                                            ▇" );
		system( "echo      ▇--------------------------------------------▇" );
		system( "echo      ▇       ********Windows激活完成********      ▇" );
		system( "echo      ▇--------------------------------------------▇" );
		system( "echo      ▇                                            ▇" );
		system( "echo      ▇             按任意键返回主菜单             ▇" );
		system( "echo      ▇                                            ▇" );
		system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
		system( "echo. && pause" );
	}else {
		system( "cls && mode con cols=60 lines=23 && color f4 && echo. && echo. && echo." );
		printf( "\n                 皮卡丘KMS激活工具V3.1.1.1\n            ------------------------------------\n\n" );
		system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
		system( "echo      ▇                                            ▇" );
		system( "echo      ▇--------------------------------------------▇" );
		system( "echo      ▇       ********激活Windows中断********      ▇" );
		system( "echo      ▇--------------------------------------------▇" );
		system( "echo      ▇                                            ▇" );
		system( "echo      ▇         请手动转换为VOL版本后重试          ▇" );
		system( "echo      ▇           （按任意键返回主菜单）           ▇" );
		system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
		system( "echo. && pause" );
	}
}


void volwin()
{
	system( "cls && mode con cols=60 lines=23 && color 3f && echo. && echo. && echo." );
	printf( "\n                 皮卡丘KMS激活工具V3.1.1.1\n            ------------------------------------\n\n" );
	system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇--------------------------------------------▇" );
	system( "echo      ▇   ********欢迎使用Windows版本转换********  ▇" );
	system( "echo      ▇--------------------------------------------▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇     请在工具打开后选择对应Windows版本      ▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇          再选择【Business-VOL版】          ▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇     最后点击【开始转换】稍等片刻即可       ▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇        提示转换完成后请关闭转换软件        ▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
	system( "choice /t 3 /d y /n >nul" );
	system( "vol.exe && cls" );
}


void actoff()
{
	system( "cls && mode con cols=60 lines=23 && color 5f && echo. && echo. && echo." );
	printf( "\n                 皮卡丘KMS激活工具V3.1.1.1\n            ------------------------------------\n\n" );
	system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇--------------------------------------------▇" );
	system( "echo      ▇    ********确认激活Office？？？********    ▇" );
	system( "echo      ▇--------------------------------------------▇" );
	system( "echo      ▇          如果已经激活请备份密钥            ▇" );
	system( "echo      ▇             按任意键开始激活               ▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
	system( "echo. && pause" );
	system( "cls && mode con cols=60 lines=23 && color 5f && echo. && echo. && echo." );
	printf( "\n                 皮卡丘KMS激活工具V3.1.1.1\n            ------------------------------------\n\n" );
	system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇--------------------------------------------▇" );
	system( "echo      ▇       ********正在激活Office********       ▇" );
	system( "echo      ▇--------------------------------------------▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇             转换Office版本...              ▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
	system( "choice /t 2 /d y /n >nul" );
	system( "off.exe && cls" );
	system( "cls && mode con cols=60 lines=23 && color f0 && echo. && echo. && echo." );
	printf( "\n                 皮卡丘KMS激活工具V3.1.1.1\n            ------------------------------------\n\n" );
	system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇--------------------------------------------▇" );
	system( "echo      ▇       ********正在激活Office********       ▇" );
	system( "echo      ▇--------------------------------------------▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇             正在激活Office...              ▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
	system( "choice /t 1 /d y /n >nul" );
	system( "cls && color 6f && aco.bat " );
	system( "cls" );
	system( "cls && mode con cols=60 lines=23 && color af && echo. && echo. && echo." );
	printf( "\n                 皮卡丘KMS激活工具V3.1.1.1\n            ------------------------------------\n\n" );
	system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇--------------------------------------------▇" );
	system( "echo      ▇       ********Office激活完成********       ▇" );
	system( "echo      ▇--------------------------------------------▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇             按任意键返回主菜单             ▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
	system( "echo. && pause" );
}


void menu()
{
	system( "cls && mode con cols=60 lines=23 && color cf && echo. && echo. && echo." );
	system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇      ********皮卡丘KMS激活工具********     ▇" );
	system( "echo      ▇--------------------------------------------▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇             1.一键激活Office               ▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇             2.激活Windows向导              ▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇             3.查看Windows状态              ▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇             4.备份Windows密钥              ▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇             5.转换Windows版本              ▇" );
	system( "echo      ▇                                            ▇" );
	system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
	printf( "\n     请输入选项前面对应的数字，按回车确认：" );
}


int main( int argc, char *argv[] )
{
	if ( argc >= 2 )
	{
		actbat();
		char	c	= 0;
		int	i	= 1;
		for (; i <= argc - 1; i++ )
		{
			c = *(argv[i] + 1);
			if ( c == 'n' )                                                         /* 静默模式 */
			{
				ShowWindow( FindWindow( "ConsoleWindowClass", argv[0] ), 0 );   /* 查找窗口隐藏自身 .. */
			}

			if ( c == 'w' )                                                         /* 激活Windows */
			{
				system( "cls && echo. && echo. && echo." );
				printf( "\n                 皮卡丘KMS激活工具V3.1.1.1\n            ------------------------------------\n\n" );
				system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
				system( "echo      ▇                                            ▇" );
				system( "echo      ▇--------------------------------------------▇" );
				system( "echo      ▇       ********正在激活Windows********      ▇" );
				system( "echo      ▇--------------------------------------------▇" );
				system( "echo      ▇                                            ▇" );
				system( "echo      ▇             正在激活Windows...             ▇" );
				system( "echo      ▇                                            ▇" );
				system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
				system( "wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /skms skms1.52pika.iego.net" );
				system( "choice /t 1 /d y /n >nul" );
				system( "wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /ato" );
				system( "choice /t 1 /d y /n >nul" );
				system( "wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /skms skms2.52pika.iego.net" );
				system( "choice /t 1 /d y /n >nul" );
				system( "wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /ato" );
				system( "choice /t 1 /d y /n >nul" );
				system( "wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /skms skms3.52pika.iego.net" );
				system( "choice /t 1 /d y /n >nul" );
				system( "wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /ato" );
				system( "choice /t 1 /d y /n >nul" );
				system( "wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /skms skms1.52pika.iego.net" );
				system( "choice /t 1 /d y /n >nul" );
				system( "cls && echo. && echo. && echo." );
				printf( "\n                 皮卡丘KMS激活工具V3.1.1.1\n            ------------------------------------\n\n" );
				system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
				system( "echo      ▇                                            ▇" );
				system( "echo      ▇--------------------------------------------▇" );
				system( "echo      ▇       ********Windows激活完成********      ▇" );
				system( "echo      ▇--------------------------------------------▇" );
				system( "echo      ▇                                            ▇" );
				system( "echo      ▇             按任意键返回主菜单             ▇" );
				system( "echo      ▇                                            ▇" );
				system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
			}
			if ( c == 'o' ) /* 激活Office */
			{
				system( "cls && echo. && echo. && echo." );
				printf( "\n                 皮卡丘KMS激活工具V3.1.1.1\n            ------------------------------------\n\n" );
				system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
				system( "echo      ▇                                            ▇" );
				system( "echo      ▇--------------------------------------------▇" );
				system( "echo      ▇       ********正在激活Office********       ▇" );
				system( "echo      ▇--------------------------------------------▇" );
				system( "echo      ▇                                            ▇" );
				system( "echo      ▇             转换Office版本...              ▇" );
				system( "echo      ▇                                            ▇" );
				system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
				system( "choice /t 2 /d y /n >nul" );
				system( "off.exe && cls" );
				system( "cls && echo. && echo. && echo." );
				printf( "\n                 皮卡丘KMS激活工具V3.1.1.1\n            ------------------------------------\n\n" );
				system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
				system( "echo      ▇                                            ▇" );
				system( "echo      ▇--------------------------------------------▇" );
				system( "echo      ▇       ********正在激活Office********       ▇" );
				system( "echo      ▇--------------------------------------------▇" );
				system( "echo      ▇                                            ▇" );
				system( "echo      ▇             正在激活Office...              ▇" );
				system( "echo      ▇                                            ▇" );
				system( "echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" );
				system( "choice /t 1 /d y /n >nul" );
				system( "cls && aco.bat " );
				system( "cls" );
			}
			if ( c == 's' ) /* 查看Windows激态 */
			{
				system( "start slmgr /dlv" ); system( "choice /t 2 /d y /n >nul" ); system( "start slmgr /xpr" );
			}
			if ( c == 'b' ) /* 备份Windows密钥 */
			{
				system( "cls && bak.exe" );
			}
			if ( c == 'h' ) /* 显示帮助 */
			{
				printf( "\n皮卡丘KMS激活工具V3.1.1.1\n------------------------------------\n使用方法：pika-kms -w -o -s -b -n -h \n" );
				printf( "[命令] | [ 描 述 ]   | [备 注 说 明]\n" );
				printf( "  -w   | 激活Windows | 需手动转换VOL\n" );
				printf( "  -o   | 激活Office  |              \n" );
				printf( "  -s   | 查看Win状态 |              \n" );
				printf( "  -b   | 备份Win密钥 |              \n" );
				printf( "  -h   | 显示此信息  |              \n" );
				printf( "  -n   | 静默模式    | 应当用在最前 \n" );
				printf( "------------------------------------\n" );
				system( "pause" );
			}
			if ( c != 'n' && c != 'b' && c != 's' && c != 'o' && c != 'w' && c != 'h' )
			{
				printf( "\n皮卡丘KMS激活工具V3.1.1.1\n------------------------------------\n参数错误！输入-h或/h查看帮助\n\n" );
				exit( 1 );
			}
		}
		return(0);
	}else {
		actadm();
		int key; menu(); scanf( "%d", &key );
		while ( 1 )
			switch ( key )
			{
			case 0: menu(); scanf( "%d", &key ); break;
			case 1: key	= 0; actoff(); menu(); scanf( "%d", &key ); break;
			case 2: key	= 0; actwin(); menu(); scanf( "%d", &key ); break; break;
			case 3: key	= 0; system( "start slmgr /dlv" ); system( "choice /t 2 /d y /n >nul" ); system( "start slmgr /xpr" ); menu(); scanf( "%d", &key ); break;
			case 4: key	= 0; system( "cls && color b0 && bak.exe" ); menu(); scanf( "%d", &key ); break;
			case 5: key	= 0; volwin(); menu(); scanf( "%d", &key ); break;
			default: key	= 0; printf( "你的输入有误，请重新输入:" ); scanf( "%d", &key ); break;
			}
	}
}
