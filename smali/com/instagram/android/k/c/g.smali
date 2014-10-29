.class final Lcom/instagram/android/k/c/g;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/CharSequence;

.field final synthetic c:Lcom/instagram/android/k/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/k/c/a;Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/instagram/android/k/c/g;->c:Lcom/instagram/android/k/c/a;

    iput-object p2, p0, Lcom/instagram/android/k/c/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/instagram/android/k/c/g;->b:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter "which"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/instagram/android/k/c/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/android/k/c/g;->b:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/instagram/android/k/c/g;->c:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->c(Lcom/instagram/android/k/c/a;)V

    .line 136
    :cond_0
    return-void
.end method
