Feature: Wyszukiwanie i zakup produktu na x-kom.pl

  Scenario: Użytkownik wyszukuje produkt i dokonuje zakupu na x-kom.pl
    Given Użytkownik jest na stronie głównej x-kom.pl
    When Użytkownik wprowadza nazwę produktu "Laptop Lenovo" w pasku wyszukiwania
    And Użytkownik klika przycisk "Szukaj" (ikonę lupy)
    Then Wyniki wyszukiwania zawierają produkt o nazwie "Laptop Lenovo"
    
    When Użytkownik wybiera produkt o nazwie "Laptop Lenovo" z wyników wyszukiwania
    And Użytkownik klika przycisk "Dodaj do koszyka"
    Then Produkt "Laptop Lenovo" zostaje dodany do koszyka
    And Użytkownik widzi komunikat "Produkt dodany do koszyka"

    When Użytkownik klika ikonę koszyka
    And Użytkownik klika przycisk "Przejdź do koszyka"
    Then W koszyku znajduje się produkt o nazwie "Laptop Lenovo"

    When Użytkownik klika przycisk "Przejdź do kasy"
    And Użytkownik loguje się na swoje konto
    And Użytkownik wybiera opcję dostawy "Kurier"
    And Użytkownik wprowadza poprawne dane do wysyłki
    And Użytkownik wybiera metodę płatności "Karta kredytowa"
    And Użytkownik wprowadza poprawne dane karty kredytowej
    And Użytkownik klika przycisk "Złóż zamówienie"
    Then Użytkownik widzi komunikat potwierdzający "Dziękujemy za złożenie zamówienia"
    And Status zamówienia to "Oczekuje na realizację"
