.class final Lcom/instagram/android/feed/a/b/ao;
.super Ljava/lang/Object;
.source "UserHeaderRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/i/d;

.field final synthetic b:Lcom/instagram/user/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/i/d;Lcom/instagram/user/c/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/instagram/android/feed/a/b/ao;->a:Lcom/instagram/android/i/d;

    iput-object p2, p0, Lcom/instagram/android/feed/a/b/ao;->b:Lcom/instagram/user/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/ao;->a:Lcom/instagram/android/i/d;

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ao;->b:Lcom/instagram/user/c/a;

    invoke-interface {v0, v1}, Lcom/instagram/android/i/d;->a(Lcom/instagram/user/c/a;)V

    .line 138
    return-void
.end method
