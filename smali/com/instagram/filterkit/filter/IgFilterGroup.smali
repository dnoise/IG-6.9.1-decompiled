.class public Lcom/instagram/filterkit/filter/IgFilterGroup;
.super Ljava/lang/Object;
.source "IgFilterGroup.java"

# interfaces
.implements Lcom/instagram/filterkit/filter/IgFilter;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/filterkit/filter/IgFilterGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/instagram/filterkit/filter/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/instagram/filterkit/filter/a;

    invoke-direct {v0}, Lcom/instagram/filterkit/filter/a;-><init>()V

    sput-object v0, Lcom/instagram/filterkit/filter/IgFilterGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->a:Z

    .line 36
    iput-boolean v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->b:Z

    .line 37
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->c:I

    .line 39
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->a:Z

    .line 36
    iput-boolean v1, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->b:Z

    .line 37
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->c:I

    .line 39
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move v3, v2

    .line 47
    :goto_0
    if-ge v3, v4, :cond_1

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 49
    new-instance v6, Lcom/instagram/filterkit/filter/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/filter/IgFilter;

    invoke-direct {v6, p0, v0}, Lcom/instagram/filterkit/filter/b;-><init>(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/filterkit/filter/IgFilter;)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, v6, Lcom/instagram/filterkit/filter/b;->b:Z

    .line 52
    iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 51
    goto :goto_1

    .line 54
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/instagram/filterkit/filter/IgFilterGroup;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final B_()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->a:Z

    .line 269
    return-void
.end method

.method public final D_()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized E_()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 273
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 283
    :goto_0
    monitor-exit p0

    return v0

    .line 277
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 278
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/filter/b;

    iget-boolean v1, v1, Lcom/instagram/filterkit/filter/b;->b:Z

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/filter/b;

    iget-object v1, v1, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/filter/b;

    iget-object v0, v0, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-interface {v0}, Lcom/instagram/filterkit/filter/IgFilter;->E_()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 280
    goto :goto_0

    .line 283
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    monitor-enter p0

    const/high16 v7, -0x8000

    .line 68
    const/4 v6, 0x0

    .line 69
    const/high16 v5, -0x8000

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 72
    const/4 v4, 0x0

    .line 73
    iget-boolean v3, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->a:Z

    .line 74
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 75
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/filterkit/filter/b;

    iget-object v9, v2, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;

    .line 77
    if-eqz v9, :cond_0

    .line 78
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/filterkit/filter/b;

    iget-boolean v2, v2, Lcom/instagram/filterkit/filter/b;->b:Z

    if-eqz v2, :cond_9

    .line 81
    invoke-interface {v9}, Lcom/instagram/filterkit/filter/IgFilter;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v4, :cond_2

    .line 82
    :cond_1
    const/4 v4, 0x1

    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 86
    :cond_2
    if-nez v3, :cond_3

    iget-boolean v2, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->b:Z

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->c:I

    if-le v2, v3, :cond_5

    .line 87
    :cond_3
    const/4 v1, 0x1

    .line 88
    invoke-interface {v9}, Lcom/instagram/filterkit/filter/IgFilter;->B_()V

    move v2, v5

    move v3, v6

    .line 97
    :goto_1
    invoke-interface {v9}, Lcom/instagram/filterkit/filter/IgFilter;->c()Lcom/instagram/filterkit/e/b;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-interface {v9}, Lcom/instagram/filterkit/filter/IgFilter;->D_()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v9}, Lcom/instagram/filterkit/filter/IgFilter;->c()Lcom/instagram/filterkit/e/b;

    move-result-object v5

    invoke-interface {v5}, Lcom/instagram/filterkit/e/b;->c()I

    move-result v5

    invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v6

    if-eq v5, v6, :cond_17

    .line 99
    :cond_4
    invoke-interface {v9, p1}, Lcom/instagram/filterkit/filter/IgFilter;->a_(Lcom/instagram/filterkit/d/c;)V

    move v5, v2

    move v6, v3

    move v3, v1

    goto :goto_0

    .line 90
    :cond_5
    iget-boolean v2, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->b:Z

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->c:I

    if-ge v2, v3, :cond_7

    :cond_6
    invoke-interface {v9}, Lcom/instagram/filterkit/filter/IgFilter;->E_()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const/4 v2, 0x1

    .line 91
    :goto_2
    if-nez v2, :cond_18

    invoke-interface {v9}, Lcom/instagram/filterkit/filter/IgFilter;->c()Lcom/instagram/filterkit/e/b;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-interface {v9}, Lcom/instagram/filterkit/filter/IgFilter;->c()Lcom/instagram/filterkit/e/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/instagram/filterkit/e/b;->c()I

    move-result v3

    invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v10

    if-ne v3, v10, :cond_18

    .line 93
    const/4 v6, 0x1

    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v1, v2

    move v3, v6

    move v2, v5

    goto :goto_1

    .line 90
    :cond_8
    const/4 v2, 0x0

    goto :goto_2

    .line 102
    :cond_9
    invoke-interface {v9, p1}, Lcom/instagram/filterkit/filter/IgFilter;->a_(Lcom/instagram/filterkit/d/c;)V

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    :goto_3
    move v6, v4

    move v7, v5

    move v5, v3

    move v4, v2

    move v3, v1

    .line 104
    goto/16 :goto_0

    .line 105
    :cond_a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->a:Z

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->b:Z

    .line 107
    const v1, 0x7fffffff

    iput v1, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->c:I

    .line 109
    invoke-static {p3}, Lcom/instagram/filterkit/e/d;->a(Lcom/instagram/filterkit/e/c;)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object v4, p3

    .line 112
    :goto_4
    iget-object v1, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 113
    const/4 v2, 0x0

    .line 119
    if-nez v6, :cond_13

    .line 120
    :cond_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 121
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 122
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/filter/b;

    iget-boolean v1, v1, Lcom/instagram/filterkit/filter/b;->b:Z

    if-eqz v1, :cond_b

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/filter/b;

    iget-object v1, v1, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;

    if-eqz v1, :cond_b

    :cond_c
    move-object v3, v2

    .line 123
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_f

    move-object v2, p3

    .line 165
    :cond_d
    monitor-exit p0

    return-object v2

    .line 109
    :cond_e
    :try_start_1
    invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v1

    invoke-static {v1}, Lcom/instagram/filterkit/e/d;->b(I)Lcom/instagram/filterkit/e/c;

    move-result-object v4

    goto :goto_4

    .line 130
    :cond_f
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v7, :cond_12

    move-object v2, p3

    .line 131
    :goto_5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/filter/b;

    iget-object v1, v1, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-interface {v1, p1, p2, v2}, Lcom/instagram/filterkit/filter/IgFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v2

    .line 132
    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->f()V

    .line 148
    :cond_10
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 149
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 151
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/filter/b;

    iget-boolean v1, v1, Lcom/instagram/filterkit/filter/b;->b:Z

    if-eqz v1, :cond_10

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/filter/b;

    iget-object v1, v1, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;

    if-eqz v1, :cond_10

    .line 152
    const/4 v5, 0x0

    .line 157
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/filter/b;

    iget-object v1, v1, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-interface {v1}, Lcom/instagram/filterkit/filter/IgFilter;->d()Z

    move-result v1

    if-nez v1, :cond_11

    .line 158
    move-object v0, v2

    check-cast v0, Lcom/instagram/filterkit/e/b;

    move-object v1, v0

    .line 159
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v7, :cond_16

    move-object v2, p3

    :goto_7
    move-object v5, v1

    .line 162
    :cond_11
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/filter/b;

    iget-object v1, v1, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-interface {v1, p1, v5, v2}, Lcom/instagram/filterkit/filter/IgFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v2

    goto :goto_6

    :cond_12
    move-object v2, v4

    .line 130
    goto :goto_5

    .line 134
    :cond_13
    if-ne v5, v7, :cond_14

    invoke-static {p3}, Lcom/instagram/filterkit/e/d;->a(Lcom/instagram/filterkit/e/c;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 137
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Cannot cache the last filter yet."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 139
    :cond_14
    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 140
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 141
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_14

    .line 142
    :cond_15
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/filter/b;

    iget-object v1, v1, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-interface {v1}, Lcom/instagram/filterkit/filter/IgFilter;->c()Lcom/instagram/filterkit/e/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto/16 :goto_6

    :cond_16
    move-object v2, v4

    .line 159
    goto :goto_7

    :cond_17
    move v5, v7

    move v11, v2

    move v2, v4

    move v4, v3

    move v3, v11

    goto/16 :goto_3

    :cond_18
    move v1, v2

    move v3, v6

    move v2, v5

    goto/16 :goto_1
.end method

.method public final declared-synchronized a(I)Lcom/instagram/filterkit/filter/IgFilter;
    .locals 2
    .parameter

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/filter/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 194
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(ILcom/instagram/filterkit/filter/IgFilter;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/instagram/filterkit/filter/b;

    invoke-direct {v2, p0, p2}, Lcom/instagram/filterkit/filter/b;-><init>(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/filterkit/filter/IgFilter;)V

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->b:Z

    .line 179
    iget v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->c:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 210
    :goto_0
    monitor-exit p0

    return-void

    .line 207
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/filter/b;

    iput-boolean p2, v0, Lcom/instagram/filterkit/filter/b;->b:Z

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->b:Z

    .line 209
    iget v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->c:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/instagram/filterkit/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 238
    if-eqz p1, :cond_0

    .line 239
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call setCaching(true) on a filter group"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 242
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/filter/b;

    iget-object v1, v1, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;

    if-eqz v1, :cond_1

    .line 243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/filter/b;

    iget-object v0, v0, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    goto :goto_0

    .line 246
    :cond_2
    return-void
.end method

.method public final a_(Lcom/instagram/filterkit/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    return-void
.end method

.method public final b(I)Z
    .locals 2
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/filter/b;

    iget-boolean v0, v0, Lcom/instagram/filterkit/filter/b;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/instagram/filterkit/e/b;
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 299
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/filter/b;

    iget-object v1, v1, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 301
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/filter/b;

    iget-boolean v0, v0, Lcom/instagram/filterkit/filter/b;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 303
    :cond_1
    return-void
.end method
