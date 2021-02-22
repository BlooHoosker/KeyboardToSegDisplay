== Projekt 2 Úloha 6 - Přepis znaků z klávesnice na zobrazovač
=== Implementační platforma

Úloha byla realizována na FPGA přípravku Digilent Basys 3

=== Rozdělení rolí

|====
^h|  Tým 1     ^h|  Martin Stahl
^h|  Tým 2     ^h|  Karel Čtvrtečka
|====

=== Popis chování

Momentálně je v projektu pouze testbench pro softwarový model PS2 entity která přijímá signály z klávesnice, a softwarovy model samotný. Chování přenosu dat jsem navrhoval podle specifikace na stránce http://www.burtonsys.com/ps2_chapweske.htm

SW model by měl implementačně sedět se specifikací kromě neimplementování host to device komunikace. 

U TB je rozdíl v tom, že ve specifikaci je uvedena 10-14khz hodinová PS2 frekvence a já si zvolil o několik řádů vyšší frekvenci. Měl jsem problémy se simulací protože to simulačně trvá velmi dlouho, pro 256 vstupů a pomalý PS2 clk naproti 50Mhz vnitřnímu clk. Na funkcionalitu by to však nemělo mít vliv.

Simulační soubor obsahuje 256 řádků vygenerovaných vstupů a výstupů, aby se všechny vykonaly musí být nastavený dostatečně dlouhý simulační čas. V souboru s testbenchem se musí nastavit cesta k souboru ps2input.txt proměnné SIMDATA aby testbench fungoval. 

Dále je v simulačním souboru na posledním řádku chyba, to je proto aby se zkontrolovalo že simulace určitě porovnává vstupy a výstupy.

V implementaci je také resetovací tlačítko, které je vyvedeno na BTND.

=== Archiv se soubory

link:./Key2Disp.xpr.zip[Key2Disp.zip]

=== Popis souborů

[options="autowidth"]
|====
^h|  Soubor               ^h|  Popis
| SW_KEYBOARD.vhd           | Softwarový model entity klávesnice
| TB_KEYBOARD.vhd           | Test-bench pro entitu klávesnice
| ps2input.txt              | Testovací data pro test-bench klávesnice
| DISPLAY.vhd               | Komponenta která zpracovává ascii znaky z komponenty klávesnice a zobrazuje je na display. Celkem uchovává 4 znaky.
| DD_SYNC.vhd               | Komponenta která synchronizuje asynchronní vstup signálů z fyzické klávesnice. 2x D klopný obvod
| KEYBOARD_UNIT.vhd         | Komponenta která spojuje řadič a datovou část klávesnice
| KEYBOARD_DP.vhd           | Datová část klávesnice
| KEYBOARD_CONTROLLER.vhd   | Řadič klávesnice
| TB_KeyToDisp.vhd          | Jednoduchý testbench pro celý projekt. Pouze posílá signály abychom se mohli podívat jak na ně naše implementace reaguje v simulaci
| key2seg_constr.xdc        | Soubor s pinovým přiřazením
| scanInput.txt             | Soubor s testovacími daty pro TB_KeyToDisp
|====
