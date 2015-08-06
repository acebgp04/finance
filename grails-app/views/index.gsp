<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}

                div.row {
                    margin-left: 50px !important;
                }



		</style>
        <g:javascript src="jquery.js" />
        <g:javascript src="jquery.gridster.js" />
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'metro-bootstrap.min.css')}">

        <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'font-awesome.min.css')}">

        <!-- Latest compiled and minified CSS -->

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

        <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'bs_modal_transitions.css')}">

        <g:javascript src="modernizr.custom.js" />


	</head>
	<body>
    <div class="content"  style="margin-top: 50px">
        <div class="row show-grid">
            <g:each in="${org.finance.Purok.list()}" var="i">
                <div class="span1">
                    <div class="thumbnail tile tile-medium tile-teal"  data-toggle="modal" data-target="#myModal">
                        <a href="#" >
                            <h1>${i.getPurok()}</h1>
                        </a>
                    </div>
                </div>
            </g:each>

        </div>
            <p>
                <a href="http://purecss.io" class="pure-button pure-button-primary">Get Started</a>
            </p>
    </div>

    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
        Launch demo modal
    </button>

    <!-- Modal -->
    <div class="modal fade zoom" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Choose Group</h4>
                </div>
                <div class="modal-body">
                    <div class="row show-grid">
                        <%
                        for(int a=1; a<=40;a++){
                        %>
                        <div class="span1">
                            <div class="thumbnail-small tile">
                                <a href="#" >
                                    <h1>${a}</h1>
                                </a>
                            </div>
                        </div>
                        <% }%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="application/javascript">
        var gridster;

        $(function(){
            var log = document.getElementById('log');

            gridster = $(".gridster ul").gridster({
                widget_base_dimensions: [100, 55],
                widget_margins: [5, 5],
                autogrow_cols: true,
                resize: {
                    enabled: true
                }
            }).data('gridster');


        });;
    </script>
	</body>
</html>
