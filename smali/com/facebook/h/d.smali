.class final Lcom/facebook/h/d;
.super Ljava/util/AbstractList;
.source "GraphObject.java"

# interfaces
.implements Lcom/facebook/h/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;",
        "Lcom/facebook/h/g",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lorg/json/JSONArray;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 618
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 619
    const-string v0, "state"

    invoke-static {p1, v0}, Lcom/facebook/g/u;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    const-string v0, "itemType"

    invoke-static {p2, v0}, Lcom/facebook/g/u;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 622
    iput-object p1, p0, Lcom/facebook/h/d;->a:Lorg/json/JSONArray;

    .line 623
    iput-object p2, p0, Lcom/facebook/h/d;->b:Ljava/lang/Class;

    .line 624
    return-void
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 730
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/h/d;->a:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 731
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 733
    :cond_1
    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 736
    invoke-static {p2}, Lcom/facebook/h/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 738
    :try_start_0
    iget-object v1, p0, Lcom/facebook/h/d;->a:Lorg/json/JSONArray;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    return-void

    .line 739
    :catch_0
    move-exception v0

    .line 740
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/facebook/h/d;->a:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 2
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 634
    .local p0, this:Lcom/facebook/h/d;,"Lcom/facebook/h/d<TT;>;"
    .local p2, object:Ljava/lang/Object;,"TT;"
    if-gez p1, :cond_0

    .line 635
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 636
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/h/d;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 637
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only adding items at the end of the list is supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/h/d;->a(ILjava/lang/Object;)V

    .line 641
    return-void
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 711
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 659
    .local p0, this:Lcom/facebook/h/d;,"Lcom/facebook/h/d<TT;>;"
    if-ne p0, p1, :cond_0

    .line 660
    const/4 v0, 0x1

    .line 666
    .end local p1
    :goto_0
    return v0

    .line 661
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 662
    const/4 v0, 0x0

    goto :goto_0

    .line 665
    :cond_1
    check-cast p1, Lcom/facebook/h/d;

    .line 666
    .end local p1
    iget-object v0, p0, Lcom/facebook/h/d;->a:Lorg/json/JSONArray;

    iget-object v1, p1, Lcom/facebook/h/d;->a:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 672
    .local p0, this:Lcom/facebook/h/d;,"Lcom/facebook/h/d<TT;>;"
    invoke-direct {p0, p1}, Lcom/facebook/h/d;->a(I)V

    .line 674
    iget-object v0, p0, Lcom/facebook/h/d;->a:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 678
    iget-object v1, p0, Lcom/facebook/h/d;->b:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/h/c;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object v0

    .line 680
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/facebook/h/d;->a:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 716
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 721
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 726
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 645
    .local p0, this:Lcom/facebook/h/d;,"Lcom/facebook/h/d<TT;>;"
    .local p2, object:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1}, Lcom/facebook/h/d;->a(I)V

    .line 647
    invoke-virtual {p0, p1}, Lcom/facebook/h/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 648
    invoke-direct {p0, p1, p2}, Lcom/facebook/h/d;->a(ILjava/lang/Object;)V

    .line 649
    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/facebook/h/d;->a:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 628
    const-string v0, "GraphObjectList{itemType=%s, state=%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/h/d;->b:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/h/d;->a:Lorg/json/JSONArray;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
