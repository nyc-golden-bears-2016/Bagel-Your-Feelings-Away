$(document).ready(function() {
var jsonInput;
var watsonOutput;
var brokenDownOutput;
var jsonOutput = {};
$("#form").on("submit", function(event){
  event.preventDefault();
  data = jsonInput["text"] = $("#form").serialize() // has to look like  {text: 'A word is dead when it is said, some say. Emily Dickinson' }
  var watson = require('watson-developer-cloud');
  var tone_analyzer = watson.tone_analyzer({
    username: '4jz1QIpnzhor',
    password: 'a42c17f1-c57d-473e-9a1b-67f4f91978ff',
    version: 'v3',
    version_date: '2016-05-19 '
  });
  tone_analyzer.tone(data, function(err, tone) {
    if (err)
        console.log(err);
    else
        // console.log(JSON.stringify(tone, null, 2));
        watson_output = tone;
        brokenDownOutput = watson_output["document_tone"]["tone_categories"][0]["tones"]
        jsonOutput["emotion1"] = brokenDownOutput[0];
        jsonOutput["emotion2"] = brokenDownOutput[1];
        jsonOutput["emotion3"] = brokenDownOutput[2];
        jsonOutput["emotion4"] = brokenDownOutput[3];
        jsonOutput["emotion5"] = brokenDownOutput[4];

    });
  $.ajax({
    url: '/response',
    method: "post",
    data: jsonOutput
    });
  });
});
