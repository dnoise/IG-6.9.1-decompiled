.class final Lcom/instagram/base/activity/b;
.super Ljava/lang/Object;
.source "BaseFragmentActivity.java"

# interfaces
.implements Landroid/support/v4/app/t;


# instance fields
.field final synthetic a:Lcom/instagram/base/activity/a;


# direct methods
.method constructor <init>(Lcom/instagram/base/activity/a;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/instagram/base/activity/b;->a:Lcom/instagram/base/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/base/activity/b;->a:Lcom/instagram/base/activity/a;

    invoke-virtual {v0}, Lcom/instagram/base/activity/a;->k()V

    .line 33
    iget-object v0, p0, Lcom/instagram/base/activity/b;->a:Lcom/instagram/base/activity/a;

    invoke-static {v0}, Lcom/instagram/base/activity/a;->a(Lcom/instagram/base/activity/a;)V

    .line 34
    return-void
.end method
