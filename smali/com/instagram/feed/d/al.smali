.class final Lcom/instagram/feed/d/al;
.super Lcom/instagram/common/a/a/j;
.source "SeenDirectShareRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/api/k/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/ak;

.field private final b:Lcom/instagram/feed/d/aj;


# direct methods
.method private constructor <init>(Lcom/instagram/feed/d/ak;Lcom/instagram/feed/d/aj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/instagram/feed/d/al;->a:Lcom/instagram/feed/d/ak;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/instagram/feed/d/al;->b:Lcom/instagram/feed/d/aj;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/feed/d/ak;Lcom/instagram/feed/d/aj;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/instagram/feed/d/al;-><init>(Lcom/instagram/feed/d/ak;Lcom/instagram/feed/d/aj;)V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/feed/d/al;->a:Lcom/instagram/feed/d/ak;

    iget-object v1, p0, Lcom/instagram/feed/d/al;->b:Lcom/instagram/feed/d/aj;

    invoke-static {v0, v1}, Lcom/instagram/feed/d/ak;->a(Lcom/instagram/feed/d/ak;Lcom/instagram/feed/d/aj;)V

    .line 76
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/instagram/feed/d/al;->c()V

    return-void
.end method

.method public final b(Lcom/instagram/common/l/a/e;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/api/k/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/feed/d/al;->a:Lcom/instagram/feed/d/ak;

    iget-object v1, p0, Lcom/instagram/feed/d/al;->b:Lcom/instagram/feed/d/aj;

    invoke-static {v0, v1}, Lcom/instagram/feed/d/ak;->b(Lcom/instagram/feed/d/ak;Lcom/instagram/feed/d/aj;)V

    .line 81
    return-void
.end method
