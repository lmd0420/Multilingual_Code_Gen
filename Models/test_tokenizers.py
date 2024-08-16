import nltk
from nltk.tokenize import word_tokenize
import jieba  # For Chinese tokenization
from janome.tokenizer import Tokenizer as JanomeTokenizer  # For Japanese tokenization

# Download necessary NLTK resources

class MultilingualTokenizer:
    def __init__(self):
        # Define the supported languages
        self.supported_languages = ["en", "ru", "es", "hi", "zh", "ja"]
        self.supported_languages_map = {
            "en": "english",
            "ru": "russian",
            "es": "spanish",
            "hi": "hindi",
            "zh": "chinese",
            "ja": "japanese",
        }

        self.japanese_tokenizer = JanomeTokenizer()  # Initialize the Japanese tokenizer

    def tokenize(self, text, language_code):
        if language_code not in self.supported_languages:
            raise ValueError(f"Unsupported language code: {language_code}")

        if language_code == "zh":
            # Use jieba for Chinese tokenization
            tokens = list(jieba.cut(text))
        elif language_code == "ja":
            # Use Janome for Japanese tokenization
            tokens = [token.surface for token in self.japanese_tokenizer.tokenize(text)]
        else:
            # For other languages supported by NLTK's punkt tokenizer
            tokens = word_tokenize(
                text #language=self.supported_languages_map[language_code]
            )

        return tokens

# Example usage
tokenizer = MultilingualTokenizer()

text_en = "Hello, world!"
tokens_en = tokenizer.tokenize(text_en, 'en')
print("English Tokens:", tokens_en)

text_ru = "Привет, мир!"
tokens_ru = tokenizer.tokenize(text_ru, 'ru')
print("Russian Tokens:", tokens_ru)

text_es = "¡Hola, mundo!"
tokens_es = tokenizer.tokenize(text_es, 'es')
print("Spanish Tokens:", tokens_es)

text_hi = "नमस्ते दुनिया!"
tokens_hi = tokenizer.tokenize(text_hi, 'hi')
print("Hindi Tokens:", tokens_hi)

text_zh = "寫一個Python程式來檢查數字是否為偶數"
tokens_zh = tokenizer.tokenize(text_zh, 'zh')
print("Chinese Tokens:", tokens_zh)

text_ja = "こんにちは、世界！"
tokens_ja = tokenizer.tokenize(text_ja, 'ja')
print("Japanese Tokens:", tokens_ja)

