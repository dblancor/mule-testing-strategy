import * from bat::BDD
import * from bat::Assertions
import * from bat::Mutable

---

suite("test") in [
	it ("Obtain all orders data: ") in [
		GET `` with {
			"headers": {
				"Accept": "application/json"
			}
		} assert [
			$.response.status mustEqual 200,
			$.response.headers.'Content-Type' mustEqual "application/json",
			$.response.body[0].status mustEqual "created"
		]
	]
]