<?php
include 'config.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if (!isset($admin_id)) {
   header('location:login.php');
}

if (isset($_GET['delete'])) {
   $delete_id = $_GET['delete'];
   mysqli_query($conn, "DELETE FROM `orders` WHERE id = '$delete_id'") or die('query failed');
   header('location:admin_orders.php');
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Orders</title>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <link rel="stylesheet" href="css/admin_style.css">

  <style>
    table {
      background-color: var(--color-white);
      width: 100%;
      padding: var(--card-padding);
      text-align: center;
      box-shadow: var(--box-shadow);
      border-radius: var(--card-border-radius);
      transition: all 0.3s ease;
    }

    table:hover {
      box-shadow: none;
    }

    table tbody td {
      height: 2.8rem;
      border-bottom: 1px solid var(--color-light);
      color: var(--color-dark-variant);
    }

    table tbody tr:last-child td {
      border: none;
    }
    
    
    
    
/* Common styles for all screen sizes */
.orders {
  margin: 20px;
}

.title {
  font-size: 2rem;
  text-align: center;
}

.box-container {
  overflow-x: auto; /* Enable horizontal scrolling for small screens */
}

table {
  width: 100%;
  border-collapse: collapse;
}

table, th, td {
  border: 1px solid #ccc;
  padding: 10px;
}

/* Desktop styles */
@media (min-width: 768px) {
  .orders {
    margin: 20px 50px;
  }

  .title {
    font-size: 2.5rem;
  }

  .box-container {
    overflow-x: visible;
  }

  table {
    width: auto;
  }
}

/* Smartphone and tablet styles */
@media (max-width: 767px) {
  .orders {
    margin: 20px 10px;
  }

  .title {
    font-size: 2rem;
  }

  th, td {
    padding: 5px;
  }
}



  </style>

</head>
<body>

<?php include 'admin_header.php'; ?>


  <!-- Button to redirect to weekly.php -->
  <button type="button" class="delete-btn" onclick="window.location.href = 'weekly.php'">Go back to weekly analytics </button>
<section class="orders">
  <h1 class="title">Tuesday Sales</h1>
  <div class="box-container">
    <table>
      <thead>
        <tr>
          <th>User ID</th>
          <th>Placed on</th>
          <th>Name</th>
          <th>Order Number</th>
          <th>Email</th>
          <th>Total products</th>
          <th>Total price</th>
        </tr>
      </thead>
      <tbody>
        <?php
        $today_date = date("Y-m-d");
        $tuesday = date('Y-m-d', strtotime('this Tuesday', strtotime($today_date)));
        $select_orders = mysqli_query($conn, "SELECT * FROM `orders` WHERE DATE(order_date) = '$tuesday' ORDER BY id DESC") or die('query failed');
        $totalSalesTuesday = 0;

        if (mysqli_num_rows($select_orders) > 0) {
            while ($fetch_orders = mysqli_fetch_assoc($select_orders)) {
                $user = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM `users` WHERE id = '{$fetch_orders['user_id']}'"));
                $totalSalesTuesday += $fetch_orders['total_price'];
                ?>
                <tr>
                    <td><?= $fetch_orders['user_id']; ?></td>
                    <td><?= $fetch_orders['placed_on']; ?></td>
                    <td><?= $user['name']; ?></td>
                    <td><?= $fetch_orders['Order_Number']; ?></td>
                    <td><?= $user['email']; ?></td>
                    <td><?= $fetch_orders['total_products']; ?></td>
                    <td>R<?= $fetch_orders['total_price']; ?></td>
                </tr>
                <?php
            }
        } else {
            echo '<tr><td colspan="7">No orders placed this Tuesday!</td></tr>';
        }
        ?>
        <tr>
          <td colspan="6">Total Sales for Tuesday:</td>
          <td>R<?= $totalSalesTuesday ?></td>
        </tr>
      </tbody>
    </table>
  </div>
</section>

<script src="js/admin_script.js"></script>
</body>
</html>
