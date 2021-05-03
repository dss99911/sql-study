
## when table is locked by cancelling task
- start transaction and unlock again on same session
- not sure this solved the issue or other reason.
```
start transaction;
commit;
```