  
        jQuery(document).ready(
            function(){
                function all(){
                    $('div[id|=more-infoo]').hide();
                    $(".menu a").css({"background-color":"#3796da","color":"white"})
                }
                $('#manager').click(
                    function(){
                        all();
                        $(this).css({"background-color":"white","color":"#3796da"})
                        $('#more-infoo-manager').show();
                        // $('#more-infoo-manager').css({"padding-left":"21px","padding-right":"21px"});
                        $('#choose').text("管理人员");
                    }
                )//管理人员
                $('#applicant').click(
                    function(){
                        all();
                        $(this).css({"background-color":"white","color":"#3796da"})
                        $('#more-infoo-applicant').show();
                       
                        $('#choose').text("申报方");
                    }
                )//申报方
                $('#expert').click(
                    function(){
                        all();
                        $(this).css({"background-color":"white","color":"#3796da"})
                        $('#more-infoo-expert').show();
                        // $('#more-infoo-expert').css({"padding-left":"21px","padding-right":"21px"});
                        $('#choose').text("评审专家");
                    }
                )//评审专家
                $('#leader').click(
                    function(){
                        all();
                        $(this).css({"background-color":"white","color":"#3796da"})
                        $('#more-infoo-leader').show();
                        // $('#more-infoo-leader').css({"padding-left":"21px","padding-right":"21px"});
                        $('#choose').text("决策者");
                    }
                    
                )//决策者
                $(".list li:nth-child(2)").click(function(){
                    	$("#user").css({"display":"block"})
                    })
            }
        )
       