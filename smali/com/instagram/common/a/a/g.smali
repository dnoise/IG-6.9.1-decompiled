.class public final Lcom/instagram/common/a/a/g;
.super Ljava/lang/Object;
.source "LoaderRequestPerformer.java"

# interfaces
.implements Lcom/instagram/common/a/a/k;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v4/app/an;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/a/a/g;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/instagram/common/a/a/g;->b:Landroid/support/v4/app/an;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/instagram/common/a/a/g;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/common/a/a/g;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/common/a/a/g;)Landroid/support/v4/app/an;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/common/a/a/g;->b:Landroid/support/v4/app/an;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/common/a/a/a;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType::",
            "Lcom/instagram/common/a/a/m;",
            ">(",
            "Lcom/instagram/common/a/a/a",
            "<TResponseType;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/instagram/common/a/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/instagram/common/a/a/h;-><init>(Lcom/instagram/common/a/a/g;Lcom/instagram/common/a/a/a;B)V

    iget-object v1, p0, Lcom/instagram/common/a/a/g;->b:Landroid/support/v4/app/an;

    invoke-static {v0, v1}, Lcom/instagram/common/a/a/h;->a(Lcom/instagram/common/a/a/h;Landroid/support/v4/app/an;)V

    .line 35
    return-void
.end method
