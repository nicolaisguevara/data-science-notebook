import org.apache.spark.SparkContext
import org.apache.spark.mllib.tree.DecisionTree
import org.apache.spark.mllib.regression.LabeledPoint
import org.apache.spark.mllib.linalg.Vectors
import org.apache.spark.mllib.tree.configuration.Algo._
import org.apache.spark.mllib.tree.impurity.{Gini, Variance}

object TestDecisionTree {
  def main(args: Array[String]) {
    val sc = new SparkContext("local", "TestDesicionTree")

    def classification() {
      // Load and parse the data file
      val data = sc.textFile("mllib/data/sample_tree_data.csv")
      val parsedData = data.map { line =>
        val parts = line.split(',').map(_.toDouble)
        LabeledPoint(parts(0), Vectors.dense(parts.tail))
      }

      // Run training algorithm to build the model
      val maxDepth = 5
      val model = DecisionTree.train(parsedData, Classification, Gini, maxDepth)

      // Evaluate model on training examples and compute training error
      val labelAndPreds = parsedData.map { point =>
        val prediction = model.predict(point.features)
        (point.label, prediction)
      }
      val trainErr = labelAndPreds.filter(r => r._1 != r._2).count.toDouble / parsedData.count
      println("Training Error = " + trainErr)
    }
    
    classification()
    
    def regression() {
      // Load and parse the data file
      val data = sc.textFile("mllib/data/sample_tree_data.csv")
      val parsedData = data.map { line =>
        val parts = line.split(',').map(_.toDouble)
        LabeledPoint(parts(0), Vectors.dense(parts.tail))
      }

      // Run training algorithm to build the model
      val maxDepth = 5
      val model = DecisionTree.train(parsedData, Regression, Variance, maxDepth)

      // Evaluate model on training examples and compute training error
      val valuesAndPreds = parsedData.map { point =>
        val prediction = model.predict(point.features)
        (point.label, prediction)
      }
      val MSE = valuesAndPreds.map { case (v, p) => math.pow((v - p), 2) }.mean()
      println("training Mean Squared Error = " + MSE)
    }
    
    regression()
  }
}
