.class public final Lcom/instagram/user/userservice/d;
.super Ljava/lang/Object;
.source "UserTrie.java"


# instance fields
.field private final a:[Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/util/Set;

    check-cast v0, [Ljava/util/Set;

    iput-object v0, p0, Lcom/instagram/user/userservice/d;->a:[Ljava/util/Set;

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    rem-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method private static c(Lcom/instagram/user/c/a;)Ljava/util/BitSet;
    .locals 6
    .parameter

    .prologue
    .line 92
    new-instance v1, Ljava/util/BitSet;

    const/16 v0, 0x1e

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 94
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/user/userservice/d;->a(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 100
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 102
    invoke-static {v4}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 103
    invoke-static {v4}, Lcom/instagram/user/userservice/d;->a(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 100
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_2
    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 62
    iget-object v1, p0, Lcom/instagram/user/userservice/d;->a:[Ljava/util/Set;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 63
    if-eqz v3, :cond_0

    .line 64
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    return-void
.end method

.method public final a(Lcom/instagram/user/c/a;)V
    .locals 4
    .parameter

    .prologue
    .line 35
    invoke-static {p1}, Lcom/instagram/user/userservice/d;->c(Lcom/instagram/user/c/a;)Ljava/util/BitSet;

    move-result-object v1

    .line 36
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    .line 37
    iget-object v2, p0, Lcom/instagram/user/userservice/d;->a:[Ljava/util/Set;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/instagram/user/userservice/d;->a:[Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    aput-object v3, v2, v0

    .line 40
    :cond_0
    iget-object v2, p0, Lcom/instagram/user/userservice/d;->a:[Ljava/util/Set;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;Ljava/util/Set;Lcom/android/internal/util/Predicate;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {p1}, Lcom/instagram/user/userservice/d;->a(Ljava/lang/CharSequence;)I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/instagram/user/userservice/d;->a:[Ljava/util/Set;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/instagram/user/userservice/d;->a:[Ljava/util/Set;

    aget-object v0, v1, v0

    invoke-static {p1, p2, v0, p3}, Lcom/instagram/user/userservice/a/i;->a(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/Collection;Lcom/android/internal/util/Predicate;)V

    .line 85
    :cond_0
    return-void
.end method

.method public final b(Lcom/instagram/user/c/a;)V
    .locals 3
    .parameter

    .prologue
    .line 49
    invoke-static {p1}, Lcom/instagram/user/userservice/d;->c(Lcom/instagram/user/c/a;)Ljava/util/BitSet;

    move-result-object v1

    .line 50
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    .line 51
    iget-object v2, p0, Lcom/instagram/user/userservice/d;->a:[Ljava/util/Set;

    aget-object v2, v2, v0

    .line 52
    if-eqz v2, :cond_0

    .line 53
    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method
