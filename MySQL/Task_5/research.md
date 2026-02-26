
Window Functions vs GROUP BY:

Window Functions:
-Preserve Granularity.
-The number of rows in the result stays the same.
-Each row keeps its original detail.

GROUP BY:
-Reduces Granularity.
-The result contains one row per group.
-Original row-level detail is lost.



Clustered vs Non-Clustered Indexes:

Clustered Indexe:
-sort and store rows
-read faster
-write slower
-storage_efficient
-The leaf nodes store the actual table rows.


Non-Clustered Indexe:
-pointers to data
-read slower
-write faster
-require additionl storage
-The leaf nodes do NOT store the full row.

Why are you only allowed to have exactly one clustered
index per table???

--> defines the physical order of the table’s data, and data can only be physically sorted in one way at a time.


Filtered & Unique Indexes:

A Filtered Index is subset of rows --> Non-clustered index + WHERE condition.

why useful ??
-save storage
-fast performance

If you put a "Unique Index" on an Email column, how does
it physically slow down INSERT statements while speeding
up SELECT statements??
- insert slow because need to search for it first to see if it exist or not ,then insert.
-select fast because search for it directly and return it.



You have a temporary "Staging Table" where you insert
millions of rows very quickly, read them once, and then
delete them. According to the "How to Choose" video,
should you use a Clustered Index, a Non-Clustered Index,
or a Heap Structure? Why?
- using Heap because - no need order and want to insert fastly 
- will read once so no need index
-easy deletion


concept (Atomicity) --> is one of the ACID properties
- completes fully or not at all.


What disastrous scenario happens if a partial failure occurs
without using a Transaction?
-corrupt data
-lost of data

