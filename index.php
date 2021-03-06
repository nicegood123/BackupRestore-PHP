<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

  <title>2nd Lab Exam</title>
</head>

<body>
  <div class="album py-5 bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="card mb-4 box-shadow">
            <div class="card-header">
              <h3>Databases</h3>
            </div>
            <div class="card-body">
              <?php
                $pdo = new PDO("mysql:host=localhost;", 'root', '');
                $statement = $pdo->query('SHOW DATABASES');
                $databases = $statement->fetchAll(PDO::FETCH_COLUMN);

                foreach ($databases as $database) { echo $database, '<br>'; }
              ?>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card mb-4 box-shadow">
            <div class="card-header">
              <h3>Backup</h3>
            </div>
            <div class="card-body">
              <form method="post" action="backup.php">
                <div class="form-group">
                  <label for="database">Database:</label>
                  <select class="form-control" name="database">
                    <?php
                      foreach ($databases as $database) {
                        echo '<option value="' . $database . '">' . $database . '</option>';
                      }
                    ?>
                  </select>
                </div>
                <input type="submit" value="Backup" class="form-control btn btn-primary mt-2">
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card mb-4 box-shadow">
            <div class="card-header">
              <h3>Restore</h3>
            </div>
            <div class="card-body">
              <form method="post" action="restore.php" enctype="multipart/form-data">
                <div class="form-group">
                  <label for="database">Database:</label>
                  <select class="form-control" name="database">
                    <?php
                      foreach ($databases as $database) {
                        echo '<option value="' . $database . '">' . $database . '</option>';
                      }
                    ?>
                  </select>
                </div>
                <div class="form-group mt-2">
                  <label for="exampleFormControlFile1">Import SQL File:</label>
                  <input type="file" name="database-file" class="form-control-file" id="exampleFormControlFile1">
                </div>
                <input type="submit" name="restore" value="Restore" class="form-control btn btn-primary mt-2">
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous">
  </script>

</body>

</html>