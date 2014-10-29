.class final Lcom/facebook/h/e;
.super Lcom/facebook/h/f;
.source "GraphObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/h/f",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 452
    invoke-direct {p0, p1}, Lcom/facebook/h/f;-><init>(Ljava/lang/Object;)V

    .line 453
    iput-object p2, p0, Lcom/facebook/h/e;->b:Ljava/lang/Class;

    .line 454
    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 521
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 522
    const-string v1, "cast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/Class;

    .line 526
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/h/e;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    :goto_0
    return-object p1

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/facebook/h/c;->a(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/h/b;

    move-result-object p1

    goto :goto_0

    .line 531
    :cond_1
    const-string v1, "getInnerJSONObject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 532
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    .line 533
    check-cast v0, Lcom/facebook/h/e;

    .line 534
    iget-object p1, v0, Lcom/facebook/h/e;->a:Ljava/lang/Object;

    goto :goto_0

    .line 535
    :cond_2
    const-string v1, "asMap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 536
    iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/h/c;->b(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 537
    :cond_3
    const-string v1, "getProperty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 538
    iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p3, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 539
    :cond_4
    const-string v1, "setProperty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 540
    invoke-direct {p0, p3}, Lcom/facebook/h/e;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 541
    :cond_5
    const-string v1, "removeProperty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 542
    iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p3, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 543
    const/4 p1, 0x0

    goto :goto_0

    .line 546
    :cond_6
    invoke-virtual {p0, p2}, Lcom/facebook/h/e;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method private a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 602
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 603
    const/4 v1, 0x1

    aget-object v1, p1, v1

    .line 604
    invoke-static {v1}, Lcom/facebook/h/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 606
    :try_start_0
    iget-object v1, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    const/4 v0, 0x0

    return-object v0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 479
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 480
    const-string v3, "clear"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 481
    iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/h/i;->a(Lorg/json/JSONObject;)V

    .line 517
    :goto_0
    return-object v2

    .line 483
    :cond_0
    const-string v3, "containsKey"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 484
    iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 485
    :cond_1
    const-string v3, "containsValue"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 486
    iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p2, v1

    invoke-static {v0, v1}, Lcom/facebook/h/i;->a(Lorg/json/JSONObject;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 487
    :cond_2
    const-string v3, "entrySet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 488
    iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/h/i;->b(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v2

    goto :goto_0

    .line 489
    :cond_3
    const-string v3, "get"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 490
    iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 491
    :cond_4
    const-string v3, "isEmpty"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 492
    iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    .line 493
    :cond_6
    const-string v3, "keySet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 494
    iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/h/i;->c(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v2

    goto/16 :goto_0

    .line 495
    :cond_7
    const-string v3, "put"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 496
    invoke-direct {p0, p2}, Lcom/facebook/h/e;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 497
    :cond_8
    const-string v3, "putAll"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 499
    aget-object v0, p2, v1

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 501
    aget-object v0, p2, v1

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 506
    :goto_2
    iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/facebook/h/i;->a(Lorg/json/JSONObject;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 503
    :cond_9
    aget-object v0, p2, v1

    instance-of v0, v0, Lcom/facebook/h/b;

    if-eqz v0, :cond_e

    .line 504
    aget-object v0, p2, v1

    check-cast v0, Lcom/facebook/h/b;

    invoke-interface {v0}, Lcom/facebook/h/b;->c()Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 508
    :cond_a
    const-string v3, "remove"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 509
    iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 511
    :cond_b
    const-string v1, "size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 512
    iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 513
    :cond_c
    const-string v1, "values"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 514
    iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/h/i;->d(Lorg/json/JSONObject;)Ljava/util/Collection;

    move-result-object v2

    goto/16 :goto_0

    .line 517
    :cond_d
    invoke-virtual {p0, p1}, Lcom/facebook/h/e;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    :cond_e
    move-object v1, v2

    goto :goto_2
.end method

.method private final c(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 550
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 551
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v4, v0

    .line 552
    const-class v0, Lcom/facebook/h/k;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/facebook/h/k;

    .line 554
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/h/k;->a()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 558
    :goto_0
    if-nez v4, :cond_1

    .line 560
    iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 562
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 564
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 566
    instance-of v4, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_8

    .line 567
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 570
    :goto_1
    invoke-static {v2, v3, v0}, Lcom/facebook/h/c;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object v1

    .line 598
    :goto_2
    return-object v1

    .line 554
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/h/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 573
    :cond_1
    const/4 v0, 0x1

    if-ne v4, v0, :cond_6

    .line 575
    const/4 v0, 0x0

    aget-object v0, p2, v0

    .line 578
    const-class v2, Lcom/facebook/h/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 579
    check-cast v0, Lcom/facebook/h/b;

    invoke-interface {v0}, Lcom/facebook/h/b;->d()Lorg/json/JSONObject;

    move-result-object v0

    move-object v2, v0

    .line 594
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 580
    :cond_3
    const-class v2, Lcom/facebook/h/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 581
    check-cast v0, Lcom/facebook/h/g;

    invoke-interface {v0}, Lcom/facebook/h/g;->a()Lorg/json/JSONArray;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    .line 582
    :cond_4
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 583
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 584
    check-cast v0, Ljava/lang/Iterable;

    .line 585
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 586
    const-class v5, Lcom/facebook/h/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 587
    check-cast v0, Lcom/facebook/h/b;

    invoke-interface {v0}, Lcom/facebook/h/b;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 589
    :cond_5
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 598
    :cond_6
    invoke-virtual {p0, p1}, Lcom/facebook/h/e;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v2, v0

    goto :goto_3

    :cond_8
    move-object v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "proxy"
    .parameter "method"
    .parameter "args"

    .prologue
    .line 463
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 465
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 466
    invoke-virtual {p0, p2, p3}, Lcom/facebook/h/e;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 475
    :goto_0
    return-object v0

    .line 467
    :cond_0
    const-class v1, Ljava/util/Map;

    if-ne v0, v1, :cond_1

    .line 468
    invoke-direct {p0, p2, p3}, Lcom/facebook/h/e;->b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 469
    :cond_1
    const-class v1, Lcom/facebook/h/b;

    if-ne v0, v1, :cond_2

    .line 470
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/h/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 471
    :cond_2
    const-class v1, Lcom/facebook/h/b;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 472
    invoke-direct {p0, p2, p3}, Lcom/facebook/h/e;->c(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 475
    :cond_3
    invoke-virtual {p0, p2}, Lcom/facebook/h/e;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 458
    const-string v0, "GraphObject{graphObjectClass=%s, state=%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/h/e;->b:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
