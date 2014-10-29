.class final Lcom/instagram/android/directshare/e/h;
.super Ljava/lang/Object;
.source "RequestedDirectSharesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/CharSequence;

.field final synthetic c:Lcom/instagram/android/directshare/e/b;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/e/b;Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/instagram/android/directshare/e/h;->c:Lcom/instagram/android/directshare/e/b;

    iput-object p2, p0, Lcom/instagram/android/directshare/e/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/instagram/android/directshare/e/h;->b:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter "which"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/instagram/android/directshare/e/h;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/android/directshare/e/h;->b:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/instagram/android/directshare/e/h;->c:Lcom/instagram/android/directshare/e/b;

    invoke-static {v0}, Lcom/instagram/android/directshare/e/b;->d(Lcom/instagram/android/directshare/e/b;)V

    .line 309
    :cond_0
    return-void
.end method
