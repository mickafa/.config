
          if(registerShortcut('main', 'Kando - main', '',
            () => {
              console.log('Kando: Triggered.');
              callDBus('menu.kando.Kando', '/menu/kando/Kando',
                       'menu.kando.Kando', 'trigger', 'main',
                       () => console.log('Kando: Triggered.'));
            }
          )) {
            console.log('Kando: Registered shortcut main');
          } else {
            console.log('Kando: Failed to registered shortcut main');
          }
        