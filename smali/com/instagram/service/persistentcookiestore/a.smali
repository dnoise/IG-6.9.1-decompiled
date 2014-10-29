.class final Lcom/instagram/service/persistentcookiestore/a;
.super Ljava/lang/Object;
.source "PersistentCookieStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;


# direct methods
.method constructor <init>(Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/instagram/service/persistentcookiestore/a;->a:Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/a;->a:Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;

    invoke-static {v0}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->a(Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;)V

    .line 302
    return-void
.end method
