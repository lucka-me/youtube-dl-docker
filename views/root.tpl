<!doctype html>
<html lang="en">

<head>
  <title>{{ title }}</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1">
  <style>
    html, body { height: 100%; }
    body {
      margin: 0;
      display: flex;
      flex-flow: column nowrap;
      justify-content: center;
      align-items: center;
      font-family: Menlo, Monaco, 'Courier New', monospace;
      color: #000;
      background-color: #99BBFF;
    }
    h1 {
      margin-block-start: 0;
      margin-block-end: 0.5em;
      font-size: 3em;
      color: #FF9CC4;
    }
    form {
      margin: 1em 5em;
      align-self: stretch;
      display: flex;
      flex-flow: row nowrap;
      line-height: 1.5;
    }
    form > * {
      height: calc(2.25rem + 2px);
      box-sizing: border-box;
      line-height: 1.5;
      margin: 0;
      padding: .375rem .75rem;
      border-width: 1px;
      border-style: solid;
      border-radius: 0;
      font-size: 1rem;
      transition: box-shadow .15s ease-in-out;
    }
    form > *:focus {
      z-index: 3;
      outline: 0;
      box-shadow: 0 0 0 .2rem rgba(255, 85, 153, .25);
    }
    form > :first-child {
      border-top-left-radius: 6px;
      border-bottom-left-radius: 6px;
    }
    form > :last-child {
      border-top-right-radius: 6px;
      border-bottom-right-radius: 6px;
    }
    form > input {
      flex: 1 1 auto;
      width: 0;
      border-color: #FFF;
      background-color: #FFF;
    }
    form > select {
      padding-right: 1.75rem;
      appearance: none;
      -webkit-appearance: none;
      border-color: #FFF;
      border-left-color: #C0C0C0;
      border-radius: 0;
      background: #FFF url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 4 5"><path fill="#343a40" d="M2 0L0 2h4zm0 5L0 3h4z"/></svg>') no-repeat right .75rem center;
      background-size: 8px 10px;
    }
    form > button {
      border-color: #FF9CC4;
      background-color: #FF9CC4;
      color: #FFF;
    }
    form > button:hover {
      cursor: pointer;
      border-color: #FF5599;
      background-color: #FF5599;
    }
  </style>
</head>

<body>
  <h1>{{ title }}</h1>
  <form action="./query" method="POST">
    <input name="url" type="url" placeholder="URL" aria-label="URL" aria-describedby="button-submit" required autofocus>
    <select name="format">
      <optgroup label="Video">
        % for item in format_list['video']:
        <option value="{{ item['value'] }}">{{ item['text'] }}</option>
        % end
      </optgroup>
      <optgroup label="Audio">
        % for item in format_list['audio']:
        <option value="{{ item['value'] }}">{{ item['text'] }}</option>
        % end
      </optgroup>
    </select>
    <button type="submit" id="button-submit">Submit</button>
  </form>
</body>

</html>