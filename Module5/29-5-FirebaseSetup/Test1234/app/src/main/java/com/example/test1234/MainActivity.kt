package  com.example.test1234

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import com.example.test1234.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding

    private var randomNumber: Int = 0
    private var numberOfAttempts: Int = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        randomNumber = generateRandomNumber()

        binding.guessButton.setOnClickListener {
            checkGuess()
        }
    }

    private fun generateRandomNumber(): Int {
        return (1..100).random()
    }

    private fun checkGuess() {
        val guess = binding.guessEditText.text.toString().toIntOrNull()

        if (guess == null) {
            binding.messageTextView.text = "Please enter a valid number."
            return
        }

        numberOfAttempts++

        if (guess < randomNumber) {
            binding.messageTextView.text = "Too low! Try again."
        } else if (guess > randomNumber) {
            binding.messageTextView.text = "Too high! Try again."
        } else {
            binding.messageTextView.text = "Congratulations! You guessed the number $randomNumber in $numberOfAttempts attempts."
            binding.guessButton.isEnabled = false
        }
    }
}
