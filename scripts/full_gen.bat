node generate.mjs android.txt cocos.txt
python import_inherit.py ../bindings/2.200/GeometryDash.bro out/GeometryDash.bro
python import_members.py ../bindings/2.200/GeometryDash.bro out/GeometryDash.bro
cp out/GeometryDash.bro ../bindings/2.202/GeometryDash.bro