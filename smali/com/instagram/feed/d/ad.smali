.class public final Lcom/instagram/feed/d/ad;
.super Ljava/lang/Object;
.source "MediaStore.java"


# static fields
.field private static final a:Lcom/instagram/feed/d/ad;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/instagram/feed/d/ad;

    invoke-direct {v0}, Lcom/instagram/feed/d/ad;-><init>()V

    sput-object v0, Lcom/instagram/feed/d/ad;->a:Lcom/instagram/feed/d/ad;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/d/ad;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a()Lcom/instagram/feed/d/ad;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/instagram/feed/d/ad;->a:Lcom/instagram/feed/d/ad;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/d/l;
    .locals 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/feed/d/ad;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/instagram/feed/d/ad;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/d/l;
    .locals 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/feed/d/ad;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    .line 41
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p1}, Lcom/instagram/feed/d/l;->a(Lcom/instagram/feed/d/l;)V

    .line 44
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/l;->a(Z)V

    .line 50
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    .line 47
    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/instagram/feed/d/l;
    .locals 1
    .parameter

    .prologue
    .line 25
    if-nez p1, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/d/ad;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Lcom/instagram/feed/d/l;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/instagram/feed/d/ad;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    return-object v0
.end method
