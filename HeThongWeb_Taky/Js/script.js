var sideBarIsOpen = true;

toggleBtn.addEventListener('click', (event) => {
    event.preventDefault();
                
    if (sideBarIsOpen)
    {
        dashboard_sidebar.style.width = '10%';
        dashboard_sidebar.style.transition = '0.3s all';
        dashboard_content_container.style.width = '90%';
        dashboard_logo.style.fontSize = '40px';
        userImage.style.width = '50px';

        menuIcons =document.getElementsByClassName('menuText');
        for(var i=0; i< menuIcons.length; i++)
        {
            menuIcons[i].style.display = 'none';
        }

        document.getElementsByClassName('dashboard_menu_lists')[0].style.textAlign = 'center';
        sideBarIsOpen = false;
    }
    else{
        dashboard_sidebar.style.width = '20%';
        dashboard_content_container.style.width = '80%';
        dashboard_logo.style.fontSize = '50px';
        userImage.style.width = '60px';

        menuIcons =document.getElementsByClassName('menuText');
        for(var i=0; i< menuIcons.length; i++)
        {
            menuIcons[i].style.display = 'inline-block';
        }

        document.getElementsByClassName('dashboard_menu_lists')[0].style.textAlign = 'left';
        sideBarIsOpen = true;
    }
});

// Submenu show / hide function.
document.addEventListener('click', function(e){
    let clickedEl = e.target;

    if(clickedEl.classList.contains('showHideSubMenu')){
        let subMenu = clickedEl.closest('li').querySelector('.subMenus');
        let mainMenuIcon = clickedEl.closest('li').querySelector('.mainMenuIconArrow');

        //Close all submenus
        let subMenus = document.querySelectorAll('subMenus');
        subMenus.forEach((sub) => {
            if(subMenu !== sub) sub.style.display = 'none';
        });
        
        // Call function to hide/show submenu
        showHideSubMenu(subMenu, mainMenuIcon);
    }
});

function showHideSubMenu(subMenu, mainMenuIcon){
    //Check if there is submenu
    if(subMenu != null){
        if(subMenu.style.display === 'block'){
            subMenu.style.display = 'none';
            mainMenuIcon.classList.remove('fa-angle-down');
            mainMenuIcon.classList.add('fa-angle-left');
        } else{
            subMenu.style.display = 'block';
            mainMenuIcon.classList.remove('fa-angle-left');
            mainMenuIcon.classList.add('fa-angle-down');
        }
    }
}

// Add / hide active class to menu
//Get the current page
//Use selector to get the current menu or submenu
// Add the active class


let pathArray = window.location.pathname.split('/');
let curFile = pathArray[pathArray.length - 1];

let curNav = document.querySelector('a[href="./' + curFile + '"]');
curNav.classList.add('subMenuActive');
let mainNav = curNav.closest('li.liMainMenu');
mainNav.style.background = "#F2B61C";

let subMenu = curNav.closest('subMenus');
let mainMenuIcon = mainNav.querySelector('i.mainMenuIconArrow');


// Call function to hide/show submenu
showHideSubMenu(subMenu, mainMenuIcon);
 
