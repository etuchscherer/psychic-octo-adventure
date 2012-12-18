$(document).ready(function(){

    var data        = new appStackMap(),
        ruleManager = new centerRuleManager();

    ruleManager.init();

    $('div.show-popsalad-stack').hover(function(){
        data.popsaladStack.map(function(i) {
            ruleManager.highlightCenterRules(i);
        })
    }, function(){
        ruleManager.resetColors();
    })

    $('div.show-feralmotion-stack').hover(function() {
        data.feralmotionStack.map(function(i) {
            ruleManager.highlightCenterRules(i);
        })
    }, function() {
        ruleManager.resetColors();
    })

    $('div.show-nerdycar-stack').hover(function() {
        data.nerdyCarStack.map(function(i) {
            ruleManager.highlightCenterRules(i);
        })
    }, function() {
        ruleManager.resetColors();
    })
})

var appStackMap = function() {
    this.popsaladStack = new Array(
        'symfony', 'jquery', 'bootstrap', 'mysql',
        'riak', 'mvc', 'sendgrid', 'git', 'netbeans',
        'oauth', 'linux', 'agile', 'vi', 'oop',
        'php', 'rackspace'
    )

    this.feralmotionStack = new Array(
        'zend', 'jquery', 'mysql', 'mvc',
        'git', 'netbeans', 'linux', 'agile',
        'oop', 'php', 'ffmpeg', 'aws'
    )

    this.nerdyCarStack = new Array(
        'rails', 'jquery', 'bootstrap', 'postgresql',
        'sqlite', 'git', 'linux', 'vi', 'rest', 'oop',
        'haml', 'rackspace'
    )
}

function centerRuleManager() {

    var originalColor, $this;

    function init(target) {
        $this = $('ul.center-rule');
//        setOriginalColor();
    }

//    function setOriginalColor() {
//        originalColor = $this.children().first().removeClass('label');
//    }

    function highlightCenterRule(target) {
        $this.find('li.' + target).addClass('highlight');
    }

    function resetColors() {
        $this.children().each(function() {
            $(this).removeClass('highlight');
        })
    }

    this.init = function() {
        init();
    }

    this.highlightCenterRules = function(target) {
        highlightCenterRule(target);
    }

    this.resetColors = function() {
        resetColors();
    }
}


