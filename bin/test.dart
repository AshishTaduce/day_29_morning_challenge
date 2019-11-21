import 'main.dart';
import 'package:test/test.dart';


    void main() {
      test("test case 1", () {
        expect(simplify('250/300'), '5/6');
        expect(simplify('2/2'), '1/1');
        expect(simplify("88/44"), ("2/1"));
        expect(simplify("477/381"), ("159/127"));
        expect(simplify("1026/4478"), ("513/2239"));
      });
    }