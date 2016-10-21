Ext.define('KitchenSink.store.Examples', {
    extend: 'Ext.data.TreeStore',

    root: {
        expanded: true,
        label :'Root',
        children: [
                   /*
                   {
                       text: 'Grids',label:'Grids',
                       expanded: true,
                       children: [
                           { leaf: true, text: 'Basic Grid', label :'Basic Grid' },
                       ]
                   },
           {
                text: 'Panels',
                expanded: true,
                children: [
                    { leaf: true, text: 'Basic Panel' },
                    { leaf: true, text: 'Framed Panel' }
                ]
            },
            {
                text: 'Grids',
                expanded: true,
                children: [
                    { leaf: true, text: 'Basic Grid' },
                    { leaf: true, text: 'Grouped Grid' },
                    { leaf: true, text: 'Locked Grid' },
                    { leaf: true, text: 'Grouped Header Grid' }
                ]
            },
            {
                text: 'Trees',
                expanded: true,
                children: [
                    { leaf: true, text: 'Basic Tree' }
                ]
            },
            {
                text: 'Tabs',
                expanded: true,
                children: [
                    { leaf: true, text: 'Basic Tabs' },
                    { leaf: true, text: 'Framed Tabs' },
                    { leaf: true, text: 'Icon Tabs' },
                    { leaf: true, text: 'Titled Tab Panels' }
                ]
            },
            {
                text: 'Windows',
                expanded: true,
                children: [
                    { leaf: true, text: 'Basic Window' }
                ]
            },
            */ 
            {
                text: '系统管理',
                label : 'Forms',
                expanded: true,
                children: [
                      { leaf: true, text: '公司',label :'Company' },
                     { leaf: true, text: '工厂',label :'Factory' },
                    { leaf: true, text: 'Login' ,label:'Login'},
                    
//                    { leaf: true, text: 'Contact' },
                    { leaf: true, text: 'Register',label :'Register' },
                    { leaf: true, text: '用户管理',label :'User' },

                    { leaf: true, text: '条码',label :'Label' },
                    { leaf: true, text: '条码详细',label :'LabelDetail' },
                    { leaf: true, text: '标签模版',label :'LabelTemplate' },
                    { leaf: true, text: '拉',label :'Line' },
                    { leaf: true, text: '工位',label :'Location' },
                    { leaf: true, text: '部件',label :'Part' },
                    { leaf: true, text: '部件种类',label :'PartFamily' },
                    { leaf: true, text: '打印',label :'Printer' },
                    { leaf: true, text: '流程',label :'Process' },
                    { leaf: true, text: '车间',label :'Shopfloor' }
//                    { leaf: true, text: 'User Manager Maintenace',label :'UserManager' }
                ]
            }  
            /*,
            {
                text: 'Toolbars',
                expanded: true,
                children: [
                    { leaf: true, text: 'Basic Toolbar' },
                    { leaf: true, text: 'Docked Toolbar' }
                ]
            }
            */
        ]
    }
});
