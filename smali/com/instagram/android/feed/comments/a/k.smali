.class final Lcom/instagram/android/feed/comments/a/k;
.super Landroid/database/DataSetObserver;
.source "CommentThreadFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/comments/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/instagram/android/feed/comments/a/k;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/k;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/a/f;->b()V

    .line 164
    return-void
.end method
