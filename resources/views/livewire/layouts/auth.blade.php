<!doctype html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdn.tailwindcss.com"></script>
  <title>{{ isset($title) ? $title . ' - ' . config('app.name') : config('app.name') }}</title>

</head>

<body>
  {{ $slot }}
</body>

</html>
